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

(module scm2lisp (symbol->lisp sexp->lisp
                  create-lisp-prelude prog->lisp file->lisp trampoline?)
  
(def-in-module in-prelude? (make-parameter #f))
(def-in-module trampoline? (make-parameter #t))

(define (symbol->lisp x)
  ;; Replaces some characters with string escapes
  (define (char-esc c)
    (case c
      ((#\_ #\^ #\: #\. #\space)
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
   ((boolean? x) (if x 't 'nil))
   ((symbol? x) (symbol->lisp x))
   ((number? x) x)
   (else (error `(atom->lisp ,x)))))

(define (quoted->lisp x)
  (cond ((null? x) 'nil)
        ((any (cut <> x) (list boolean? number? string?))
         (atom->lisp x))
        (else `(quote ,x))))

(define (lambda->lisp args body name)
  (let ((nbody (map sexp->lisp (rewrite-body-int-defs body))))
    `(lambda ,(scm-formals->lisp args)
       ,@(if (and (trampoline?)
                  (or (not (null? (cdr nbody))) (computation? (car nbody))))
             `((cpscm__trampoline (lambda () . ,nbody)))
             nbody))))

(define (declare-global sym val)
  (set! sym (symbol->lisp sym))
  `(locally (declare (special ,sym)) (setq ,sym ,val)))

(define/opt (sexp->lisp sexp (name))
  (wmatch
   sexp
   (('quote x) (quoted->lisp x))
   (('begin . prog)
    `(progn
      ,@(map (compose (cut list 'funcall 'cpscm__reduce-trampoline <>)
                      sexp->lisp)
         prog)))
   (('set! x val) `(setq ,(symbol->lisp x) ,(sexp->lisp val)))
   (('lambda args . body) (lambda->lisp args body name))
   (('define (f . args) . body)
    (sexp->lisp `(define ,f (lambda ,args . ,body))))
   (('define x val) (declare-global x (sexp->lisp val)))
   ((f . args) `(funcall ,(sexp->lisp f) ,@(map sexp->lisp args)))
   (_ (atom->lisp sexp))))

(define (create-lisp-prelude)
  (parameterize
      ((in-prelude? #t))
    (call-with-output-file "prelude.lsp"
      (lambda (p)
        (for-each
         (lambda (x) (pretty-print x p) (newline p) (newline p))
         (append
          (map (compose is-sexp->lisp simplify-sexp expand-extra)
               (cpscm-defs-cpsed))
          (prog->lisp (cpscm-defs))))))))

(define (is-sexp->lisp sexp)
  (define (do-eval sexp)
    (if (not (computation? sexp)) (sexp->lisp sexp)
        `(cpscm__drive
          (cpscm__trampoline (lambda () ,(sexp->lisp sexp)))
          (function error))))
  (wmatch sexp
          ((or ('define (f . args) . body)
               ('define f ('lambda args . body)))
           (sexp->lisp sexp))
          (('define x val) (declare-global x (do-eval val)))
          (('set! x val) `(setq ,(symbol->lisp x) ,(do-eval val)))
          (('quote x) sexp)
          ((f . args) (do-eval sexp))
          (_ sexp)))

(define (prog->lisp prog)
  (map is-sexp->lisp (prog->is prog)))

(def-in-module file->lisp (cut cpscm-compile-file prog->lisp <> <>))

)
