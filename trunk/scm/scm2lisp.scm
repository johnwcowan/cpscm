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

(require-library 'cpscm) (import cpscm)

(module scm2lisp (symbol->lisp sexp->lisp
                  create-lisp-prelude scm2lisp:compile
                  trampoline?)
  
(def-in-module in-prelude? (make-parameter #f))
(def-in-module trampoline? (make-parameter #t))

(define (symbol->lisp x)
  ;; Replaces some characters with string escapes
  (define (char-esc c)
    (case c
      ((#\_) "__") ((#\space) "_x_") ((#\:) "_c_")
      ((#\^ #\.)
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
  (with-input-from-str (tr-sym x) read))

;; Converts formals from Scheme-style (x y . more) to (x y &rest more)
(define (scm-formals->lisp formals)
  (define (loop formals result)
    (cond
     ((null? formals) (reverse! result))
     ((pair? formals) (loop (cdr formals)
                            (cons (symbol->lisp (car formals)) result)))
     (else (loop '() `(,(symbol->lisp formals) &rest ,@result)))))
  (loop formals '()))

(define (atom->lisp x)
  (cond
   ((string? x) x)
   ((boolean? x) (if x 't 'cpscm__false))
   ((symbol? x) (symbol->lisp x))
   ((number? x) x)
   ((char? x) x)
   (else (error `(atom->lisp ,x)))))

(define (quoted->lisp x)
  (define orig `(quote ,x))
  (cond ((null? x) 'nil)
        ((symbol? x) orig)
        ((vector? x)
         `(quote ,(list->vector (second (quoted->lisp (vector->list x))))))
        ((pair? x)
         `(quote ,(improper-map (compose unwrap-quote quoted->lisp) x)))
        (else (atom->lisp x))))

(define (lambda->lisp args body name)
  (let ((nbody (map sexp->lisp (rewrite-body-int-defs body))))
    ;; support for multi-sexp body broken for now
    (or (null? (cdr nbody)) (error 'lambda->lisp))
    `(lambda ,(scm-formals->lisp args)
       ,@(if (and (trampoline?) (needs-trampoline? (car nbody)))
             `((cpscm__trampoline (lambda () . ,nbody)))
             nbody))))

(define (declare-global sym val)
  `(cpscm__global ,(symbol->lisp sym) ,val))

(define (top-sexp->lisp sexp)
  (sexp->lisp sexp #f #t))

(define/opt (sexp->lisp sexp (name top?))
  (define (do-eval sexp)
    ((if (computation? sexp) drive values)
     (sexp->lisp sexp)))
  (define (drive lexp)
    (if top? `(cpscm__drive ,lexp (function error)) lexp))
  (define (do-red sexp)
    ((if (needs-trampoline? sexp)
         (cut list 'cpscm__reduce-trampoline <>) values)
     (sexp->lisp sexp)))
  (wmatch
   sexp
   (('quote x) (quoted->lisp x))
   (('begin . prog)
    (receive (some last) (split-at-right prog 1)
      (drive `(progn ,@(map do-red some) ,(sexp->lisp (car last))))))
   (('set! x val) `(setq ,(symbol->lisp x) ,(do-eval val)))
   (('lambda args . body) (lambda->lisp args body name))
   (('define (f . args) . body)
    (sexp->lisp `(define ,f (lambda ,args . ,body))))
   (('define x val) (declare-global x (do-eval val)))
   ((f . args)
    (drive `(funcall ,(sexp->lisp f) ,@(map sexp->lisp args))))
   (_ (atom->lisp sexp))))

(define (create-lisp-prelude)
  (parameterize
      ((in-prelude? #t))
    (call-with-output-file "prelude.lsp"
      (lambda (p)
        (for-each
         (lambda (x) (pretty-print x p) (newline p) (newline p))
         (append
          (map (compose top-sexp->lisp simplify-sexp expand-extra)
               (cpscm-defs-cpsed))
          (prog->lisp (cpscm-defs))))))))

(define (prog->lisp prog)
  (map top-sexp->lisp (prog->is prog)))

(def-in-module scm2lisp:compile
  (cpscm-compiler prog->lisp pretty-print))

)
