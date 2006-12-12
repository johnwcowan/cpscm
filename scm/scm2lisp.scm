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

(module scm2lisp (symbol->lisp
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
  (let ((sexp (car (rewrite-body-int-defs body))))
    (define ret
      (let ((lexp (sexp->lisp sexp)))
        (if (trampoline?) `(cpscm__trampoline ,lexp) lexp)))
    `(lambda ,(scm-formals->lisp args)
       ,ret)))
    
(define/opt (sexp->lisp sexp (name))
  (wmatch sexp
          (('quote x) (quoted->lisp x))
          (('begin . prog)
           `(progn ,@(map (compose (cut list 'cpscm__reduce-trampoline <>)
                                   sexp->lisp)
                          prog)))
          (('set! x val) `(setq ,(symbol->lisp x) ,(sexp->lisp val)))
          (('lambda args . body) (lambda->lisp args body name))
          (('define (f . args) . body)
           (sexp->lisp `(define ,f (lambda ,args . ,body))))
          (('define x val) `(defparameter ,(symbol->lisp x) ,(sexp->lisp val)))
          ((f . args) `(funcall ,(sexp->lisp f) ,@(map sexp->lisp args)))
          (_ (atom->lisp sexp))))

(define (create-lisp-prelude)
  (parameterize
      ((in-prelude? #t))
    (with-output-to-file "prelude.lsp"
      (cut for-each (lambda (x) (display x) (newline) (newline))
           (map (compose sexp->lisp simplify-sexp)
                (append
                 (map expand-ifs (cpscm-defs-cpsed))
                 (map (compose
                       def->cps simplify-sexp rewrite-int-defs expand-ifs)
                      (expand-program (cpscm-defs)))))))))

(define (prog->lisp prog)
  (define (do-eval sexp)
    (if (atom? sexp) sexp
        `(cpscm__drive
          (cpscm__trampoline ,(sexp->lisp sexp))
          (function error))))
  (define (process-sexp sexp)
    (wmatch sexp
            ((or ('define (f . args) . body)
                 ('define f ('lambda args . body)))
             (sexp->lisp sexp))
            (('define x val) `(defparameter ,(symbol->lisp x) ,(do-eval val)))
            (('quote x) sexp)
            ((f . args) (do-eval sexp))
            (_ sexp)))
  (map process-sexp (prog->is prog)))

(def-in-module file->lisp (cut cpscm-compile-file prog->lisp <> <>))

)
