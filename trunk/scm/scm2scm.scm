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

(require-library 'cpscm) (import cpscm)

(define in-prelude? (make-parameter #f))
(define trampoline? (make-parameter #t))

(define (symbol->cpscm x)
  (define (char-esc c)
    (case c
      ((#\. #\space)
       (s+ "_" (number->string (char->integer c) 16) "_"))
      (else (string c))))
  (define (str-esc str)
    (string-concatenate (map char-esc (string->list str))))
  (define (tr-prefix str pfx tr)
    (s+ tr (str-esc (string-drop str (string-length pfx)))))
  (define (tr-sym x)
    (define xstr (symbol->string x))
    (define (chk pfx+tr) (string-prefix? (car pfx+tr) xstr))
    (define (find-pfx)
      (find-tail
       chk `(,@(if (in-prelude?)
                   `(("%cpscm:" ,(s+ cpscm-name "__")))
                   `())
             (" %gs:" "g")
             ("" ,cpscm-name))))
    (apply tr-prefix xstr (car (find-pfx))))
  (unless (symbol? x) (error `(symbol->cpscm ,x)))
  (with-input-from-str (tr-sym x) read))

(define (atom->cpscm x)
  (cond
   ((pair? x) (error `(atom->cpscm ,x)))
   ((symbol? x) (symbol->cpscm x))
   (else x)))

(define (formals->cpscm formals)
  (cond
   ((null? formals) '())
   ((pair? formals)
    (cons (symbol->cpscm (car formals)) (formals->cpscm (cdr formals))))
   (else (symbol->cpscm formals))))

(define (lambda->cpscm formals body)
  (let ((sexp (car (rewrite-body-int-defs body))))
    (define ret
      (let ((lexp (sexp->cpscm sexp)))
        (if (trampoline?) `(cpscm__trampoline ,lexp) lexp)))
    `(lambda ,(formals->cpscm formals)
       ,ret)))

(define (sexp->cpscm sexp)
  (wmatch sexp
          (('quote x) sexp)
          (('begin . more)
           `(begin
              ,@(map (compose (cut list 'cpscm__reduce-trampoline <>)
                              sexp->cpscm)
                     more)))
          (('set! var val) `(set! ,(symbol->cpscm var) ,(sexp->cpscm val)))
          (('define (f . args) . body)
           (sexp->cpscm `(define ,f (lambda ,args . ,body))))
          (('define x val) `(define ,(symbol->cpscm x) ,(sexp->cpscm val)))
          (('lambda formals . body) (lambda->cpscm formals body))
          ((f . args) (map sexp->cpscm sexp))
          (_ (atom->cpscm sexp))))
          
(define (r5rs-defs)
  (call-with-input-file "../doc/r5rs_defs.txt" port->sexp-list))

(define (create-cpscm-prelude)
  (define (wrnl x) (write x) (newline))
  (define aux-defs
    `((define append! append)  ;; TODO: optimize
      (define (append-reverse rev-head tail)  ;; TODO: optimize
        (append (reverse rev-head) tail))
      (define append-reverse! append-reverse)
      (define (reverse! l) (reverse l))  ;; TODO: optimize
      ))
  (define hof '(member memq memv assoc assq assv map for-each))
  (define ccfuns
    '(dynamic-wind call-with-values values call-with-current-continuation))
  (define (hof-def? def)
    (and (pair? (cadr def)) (memq (caadr def) hof)))
  (parameterize
      ((in-prelude? #t))
    (with-output-to-file "cpscm-drv.scm"
      (lambda ()
        (wrnl '(define-record-type :cpscm__trampoline
                 (cpscm__trampoline-create thunk) cpscm__trampoline?
                 (text cpscm__trampoline-text cpscm__trampoline-set-text!)
                 (thunk cpscm__trampoline-thunk)))
        (wrnl '(define-syntax cpscm__trampoline
                 (syntax-rules ()
                   ((_ . rest) (let ((tr (cpscm__trampoline-create
                                          (lambda () . rest))))
                                 (cpscm__trampoline-set-text! tr 'rest)
                                 tr)))))
        (wrnl
         '(define (cpscm__reduce-trampoline cc)
            (if (cpscm__trampoline? cc)
                (begin
                  (display "Executing: ")
                  (pretty-print (cpscm__trampoline-text cc)) (newline)
                  (cpscm__reduce-trampoline ((cpscm__trampoline-thunk cc))))
                cc)))
        (wrnl `(define (,(symbol->cpscm boolean->combinator) test)
                 (if test
                     (lambda (kk then else) (then kk))
                     (lambda (kk then else) (else kk)))))
        (wrnl `(define ,(symbol->cpscm '%cpscm:normal-apply) apply))
        (for-each
         (lambda (d)
           (unless (memq d `(apply ,@ccfuns ,@hof))
             (wrnl `(define ,(symbol->cpscm d)
                      (lambda (k . args) (k (apply ,d args)))))))
         (r5rs-defs))
        (for-each
         wrnl
         `(,@(map (compose sexp->cpscm simplify-sexp)
                  (append
                   (map expand-ifs (cpscm-defs-cpsed))
                   (map (compose
                         def->cps simplify-sexp rewrite-int-defs expand-ifs)
                        (expand-program
                         (append
                          (cpscm-int-defs) aux-defs
                          (filter hof-def? (r5rs-bootstrap-defs)))))))
           (define cpscmcall/cc cpscmcall-with-current-continuation)
           ))
        ))))

(define (prog->cpscm prog)
  (define (do-eval sexp)
    (if (atom? sexp) sexp
        `(cpscm__reduce-trampoline
          (cpscm__trampoline ,(sexp->cpscm sexp)))))
  (define (process-sexp sexp)
    (wmatch sexp
            ((or ('define (f . args) . body)
                 ('define f ('lambda args . body)))
             (sexp->cpscm sexp))
            (('define x val) `(define ,(symbol->cpscm x) ,(do-eval val)))
            (('quote x) sexp)
            ((f . args) (do-eval sexp))
            (_ sexp)))
  (map process-sexp (prog->is prog)))

(define file->cpscm (cut cpscm-compile-file prog->cpscm <> <>))
