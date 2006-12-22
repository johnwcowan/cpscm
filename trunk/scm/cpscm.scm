;; Copyright (C) 2006 Dan Muresan
;;
;; This file is part of cpscm (http://www.omnigia.com/scheme/cpscm/home).
;;
;; cpscm is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2 of the License, or
;; (at your option) any later version.
;;
;; cpscm is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with cpscm; if not, write to the Free Software
;; Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

(require-library 'analysis) (import analysis)
(require-library 'r5rs-bootstrap) (import r5rs-bootstrap)
(require-library 'alexpander-cpscm)

(define cpscm-name "cpscm")
(define (__cpscm name) (s+ cpscm-name "__" name))

(module cpscm
  (prog->is
   cpscm-compiler
   sexp->cps def->cps lambda->cps
   cpscm-int-defs cpscm-defs cpscm-defs-cpsed)
                  

(define (cpscm-int-vars)
  `(
    (define %cpscm:vals-marker #f)
    (define %cpscm:winders '())
    (define %cpscm:err-hnd #f)
    (define %cpscm:debug-trampolines? #f)
    (define %cpscm:err-cont #f)
    ))

(define (cpscm-int-defs)
  `(
    (define (,make-promise proc)
      (let ((result-ready? #f) (result #f))
        (lambda ()
          (if result-ready? result
              (let ((x (proc)))
                (if result-ready? result
                    (begin (set! result-ready? #t)
                           (set! result x)
                           result)))))))
    (set! %cpscm:vals-marker (list 'values))
    (define (%cpscm:pack-vals things)
      (if (or (null? things) (not (null? (cdr things))))
          `(,%cpscm:vals-marker . ,things)
          (car things)))
    (define (%cpscm:unpack-vals vals)
      (if (and (pair? vals) (eq? (car vals) %cpscm:vals-marker))
          (cdr vals) (list vals)))
    (define (%cpscm:switch-winders ccwinders)
      ;; @param a reversed list of winders to be popped
      ;; @param b reversed list of winders to be pushed
      (define (switch a b)
        (define (run-all to-apply)
          (if (null? to-apply) #t
              (begin ((car to-apply)) (run-all (cdr to-apply)))))
        ;; apply cdr's of (reverse! a), then car's of b
        (run-all (append-reverse! (map cdr a) (map car b)))
        (set! %cpscm:winders ccwinders))
      (define (loop a b)
        (if (or (null? a) (null? b) (not (eq? (car a) (car b))))
            (switch a b)
            (loop (cdr a) (cdr b))))
      (loop (reverse %cpscm:winders) (reverse ccwinders)))
    (define (dynamic-wind before thunk after)
      (define result #f)
      (before)
      (set! %cpscm:winders (cons (cons before after) %cpscm:winders))
      (set! result (thunk))
      (set! %cpscm:winders (cdr %cpscm:winders))
      (after)
      result)
    (define (with-failure-continuation hnd thunk)
      (define old-hnd (current-error-handler))
      (define (new-hnd e ek) (current-error-handler old-hnd) (hnd e ek))
      (current-error-handler new-hnd)
      (thunk))
    (define with/fc with-failure-continuation)
    (define (%cpscm:default-err-hnd e ek)
      (display "Error: ") (display e) (newline))
    (set! %cpscm:err-hnd %cpscm:default-err-hnd)
    (define (current-error-handler . hnd)
      (if (null? hnd) %cpscm:err-hnd
            (set! %cpscm:err-hnd (car hnd))))
    (call-with-current-continuation
     (lambda (exit)
       (call-with-values
           (lambda ()
             (call-with-current-continuation
              (lambda (cc) (set! %cpscm:err-cont cc) (exit #t))))
         (lambda (e ek) ((current-error-handler) e ek)))))
    (define (error e)
      (call-with-current-continuation
       (lambda (ek)
         (%cpscm:err-cont e ek))))
    ))
(define (cpscm-defs)
  (append (r5rs-bootstrap-defs) (cpscm-int-defs)))

(define (cpscm-defs-cpsed)
  `(,@(cpscm-int-vars)
    (define (call-with-current-continuation k f)
      (define ccwinders %cpscm:winders)
      (f k (lambda (_ . xs)
            (%cpscm:switch-winders
             (lambda (_) (%cpscm:pack-vals k xs))
             ccwinders))))
    (define (apply k f . args)
      (%cpscm:normal-apply %cpscm:normal-apply f k args))
    (define (call-with-values k producer consummer)
      (producer
       (lambda (vals)
         (%cpscm:unpack-vals (lambda (vs) (apply k consummer vs)) vals))))
    (define (values k . things) (%cpscm:pack-vals k things))
    ))

;; Converts a function body to CPS.
;; @param k name of final continuation
;; @param t list of defs then expressions
(define (body->cps k body)
  (receive (defs bexpr) (sep-int-defs body)
    (define substs (sexp->anf (wrap-begin bexpr)))
    `(,@(map def->cps defs) ,(output-cps k (reverse! substs)))))

;; Outputs a CPS form based on an ANF list of substitutions
(define (output-cps k substs)
  (define non-cps `(set! ,boolean->combinator))
  ;; CPS-transforms lambda forms, leaves other forms alone
  (define (maybe-lambda->cps x)
    (if (lambda-form? x)
        (lambda->cps x) x))
  (let loop ((substs substs))
    (if (null? (cdr substs)) `(,k ,(maybe-lambda->cps (caddar substs)))
        (let* ((csubst (car substs)) (result (car csubst))
               (ccbody (loop (cdr substs))))
          (define f (maybe-lambda->cps (second csubst)))
          (define cc `(lambda (,result) ,ccbody))
          (define args (map maybe-lambda->cps (cddr csubst)))
          (cond
           ((eq? f 'begin)
            `(,cc ,(last csubst)))
           ((and (eq? f 'apply) (equal? (last args) '(quote ())))
            `(,(car args) ,cc ,@(drop-right (cdr args) 1)))
           ((memq f non-cps)
            `(,cc (,f ,@args)))
           (else `(,f ,cc ,@args)))))))

;; CPS-transforms lambda forms
(define (lambda->cps form)
  (define args (second form))
  (define k (xgensym "k"))
  `(lambda (,k . ,args) ,@(body->cps k (cddr form))))

;; CPS-transforms definitions
;; Only handles right-hand-sides that are values.
(define (def->cps form)
  (wmatch form
          ((or ('define (f . args) . body)
               ('define f ('lambda args . body)))
           (let ((form `(lambda ,args . ,body)))
             `(define ,f ,(lambda->cps form))))
          (('define x v) `(define ,x ,(sexp->cps v)))))

(define (sexp->cps sexp)
  (cond
   ((define? sexp) (def->cps sexp))
   (else
    (wmatch sexp
            (('quote x) sexp)
            ((f . args) `(,(lambda->cps `(lambda () ,sexp)) (lambda (x) x)))
            (_ sexp)))))

;; Converts a program to "intermediate Scheme" form
(define (prog->is prog)
  (map
   (compose simplify-sexp sexp->cps simplify-sexp rewrite-int-defs expand-extra
            (lambda (sexp)
              (if (define? sexp)
                  (cout ";; compiling "
                        (second (def-fun->lambda-form sexp)) "\n"))
              sexp))
   (expand-program prog)))

(define/opt (cpscm-compiler compiler ((print pretty-print)))
  (lambda (from . to)
    (define compiled
      (compiler
       (if (string? from) (call-with-input-file from port->sexp-list)
           from)))
    (define (print-compiled p)
      (for-each (lambda (sexp) (print sexp p) (newline p) (newline p))
                compiled))
    (or (null? to) (set! to (car to)))
    (cond
     ((null? to) compiled)
     ((string? to) (call-with-output-file to print-compiled))
     ((port? to) (print-compiled to))
     (else (error 'cpscm-compiler)))))
)
