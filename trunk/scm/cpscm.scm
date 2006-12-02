;; Copyright (C) 2006 Dan Muresan
;;
;; This file is part of cpscm.
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

(require-library 'analysis)

(define cpscm-name "cpscm")
(define (__cpscm name) (s+ cpscm-name "__" name))

(include "r5rs-bootstrap.scm")

(define (cpscm-int-defs)
  `(
    (define %cpscm:winders '())
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
      (define oldhnd #f)
      (call/cc
       (lambda (cc)
         (dynamic-wind
             (lambda () (set! oldhnd (current-error-handler)))
             (lambda () (current-error-handler hnd cc) (thunk))
             (lambda () (current-error-handler oldhnd))))))
    (define with/fc with-failure-continuation)
    ))
(define (cpscm-defs)
  (append (r5rs-bootstrap) (cpscm-int-defs)))

(define (cpscm-defs-cpsed)
  `((define (call-with-current-continuation k f)
      (define ccwinders %cpscm:winders)
      (f k (lambda (_ . xs)
            (%cpscm:switch-winders
             (lambda (_) (%cpscm:normal-apply k xs)) ;;  (lambda (_) (k x))
             ccwinders))))
    (define (apply k f . args)
      (%cpscm:normal-apply %cpscm:normal-apply f k args))
    (define (call-with-values k producer consummer)
      (producer (lambda vals (apply k consummer vals))))
    (define (values k . things) (%cpscm:normal-apply k things))
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
  (define non-cps '(set!))
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
           ((memq f non-cps)
            `(,cc (,f ,@args)))
           (else `(,f ,cc ,@args)))))))

;; CPS-transforms lambda forms
(define (lambda->cps form)
  (define args (second form))
  (define k (xgensym ":k"))
  `(lambda (,k . ,args) ,@(body->cps k (cddr form))))

;; CPS-transforms lambda forms, leaves other forms alone
(define (maybe-lambda->cps x)
  (if (lambda-form? x)
      (lambda->cps x) x))

;; CPS-transforms definitions
;; Only handles right-hand-sides that are values.
(define (def->cps form)
  (wmatch form
          ((or ('define (f . args) . body)
               ('define f ('lambda args . body)))
           (let ((form `(lambda ,args . ,body)))
             `(define ,f ,(lambda->cps form))))
          (('define x v)
           (if (computation? v)
               (error `(def->cps requires evaluation ,form))
               form))))

;; Converts a program to "intermediate Scheme" form
(define (prog->is prog)
  ((compose simplify-sexp def->cps simplify-sexp)
   `(define dummy
      ,(rewrite-lambda-int-defs
        `(lambda () . ,(expand-program (cons #t prog)))))))
