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

(module scm2js (symbol->js sexp->js quoted->js
                create-js-prelude scm2js:compile)

(def-in-module in-prelude? (make-parameter #f))

;; Generates JS code that destructures a list according to lambda list
(define (js-bind-formals jsarg args)
  (define (loop args result)
    (cond ((null? args) result)
          ((pair? args)
           (let ((var (symbol->js (car args))))
             (loop (cdr args) (s+
                               result "var " var "=" jsarg ".car; "
                               jsarg "=" jsarg ".cdr;\n"))))
           (else (s+
                  result "var " (symbol->js args) "=" jsarg ";\n"))))
  (loop args ""))

(define (list->js args)
  (define (loop args result)
    (cond ((null? args) (s+ result (__cpscm "nil")))
          ((pair? args)
           (loop (cdr args) (s+ result (sexp->js (car args)) ", ")))
          (else (s+ result (sexp->js args)))))
  (s+ (loop args (s+ (__cpscm "list") " (")) ")"))

(define (symbol->js x)
  ;; Replaces some characters with string escapes
  (define (char-esc c)
    (case c
      ((#\_) "__") ((#\-) "_d_") ((#\?) "_p_") ((#\!) "_b_") ((#\=) "_e_")
      ((#\<) "_l_") ((#\>) "_r_") ((#\/) "_w_") ((#\space) "_x_")
      ((#\:) "_c_")
      ((#\+ #\* #\^ #\$ #\% #\& #\@ #\~ #\.)
       (s+ "_" (number->string (char->integer c) 16) "_"))
      (else (string c))))
  (define (fix-first l)
    (if (string=? (car l) "__") (cons "_u_" (cdr l)) l))
  (define (str-esc str)
    (string-concatenate (fix-first (map char-esc (string->list str)))))
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
             (" %gs:" "g__")
             ("" ,cpscm-name))))
    (apply tr-prefix xstr (car (find-pfx))))
  (tr-sym x))

(define (string->js str)
  (with-output-to-string (cut write str)))

(define (atom->js x)
  (cond
   ((string? x) (string->js x))
   ((boolean? x) (if x "true" "false"))
   ((symbol? x) (symbol->js x))
   ((number? x) (number->string x))
   ((char? x)
    (s+ "(cpscm__char (" (number->string (char->integer x)) "))"))
   (else (with-output-to-string (cut display x)))))

(define (quoted-list->js l)
  (define (loop l res)
    (if (pair? l) (loop (cdr l) (s+ res (quoted->js (car l)) ", "))
        (s+ res (quoted->js l))))
  (s+ (loop l (s+ (__cpscm "list")" (")) ")"))

(define (quoted->js x)
  (cond ((pair? x) (quoted-list->js x))
        ((null? x) (__cpscm "nil"))
        ((symbol? x) (s+ (__cpscm "sym") " ("
                         (string->js (symbol->string x)) ")"))
        ((vector? x)
         (s+ "[" (string-join (map quoted->js (vector->list x)) ", ") "]"))
        (else (atom->js x))))

(define (lambda->js args body name)
  (let* ((rbody (rewrite-body-int-defs body))
         (nbody (s+ (sexp->js (car rbody)) ";")))
    ;; support for multi-sexp body broken for now
    (or (null? (cdr rbody)) (error 'lambda->js))
    (s+
     "function " (if name name "") "(__args) {\n"
     (js-bind-formals "__args" args)
     "return "
     (if (and (trampoline?) (needs-trampoline? (car rbody)))
         (s+ "new cpscm__Trampoline (function () {\nreturn " nbody " });")
         nbody)
     "\n}\n")))

(define (top-sexp->js sexp)
  (sexp->js sexp #f #t))

(define/opt (sexp->js sexp (name top?))
  (define (do-eval sexp)
    (s+ ((if (computation? sexp) drive values)
         (sexp->js sexp))))
  (define drive
    (if top? (cut string-append "cpscm__drive (" <> ")")
        values))
  (define (do-red sexp)
    ((if (needs-trampoline? sexp)
         (cut string-append "cpscm__reduce_d_trampoline (" <> ")")
         values)
     (sexp->js sexp)))
  (wmatch sexp
          (('quote x) (quoted->js x))
          (('begin . prog)
           (receive (some last) (split-at-right prog 1)
             (s+ (drive
                  (s+ "(" (string-join (map do-red some) ", ")
                      ", " (sexp->js (car last))
                      ")"))
               (if top? ";\n\n" ""))))
          (('set! x val) (s+ "(" (atom->js x) " = " (do-eval val) ")"))
          (('lambda args . body) (lambda->js args body name))
          (('define (f . args) . body)
           (sexp->js `(define ,f (lambda ,args . ,body))))
          (('define x val)
           (s+ "var " (symbol->js x) " = " (do-eval val) ";\n"))
          ((f . args)
           (s+ (drive (s+ "(" (sexp->js f) ") "
                          "(" (list->js args) ")"))
               (if top? ";\n\n" "")))
          (_ (atom->js sexp))))

(define (create-js-prelude)
  (parameterize
   ((in-prelude? #t) (strict-letrec? #f))
   (call-with-output-file "prelude.js"
     (lambda (p)
       (display
        (s+ (string-concatenate
             (append
              (map (compose top-sexp->js simplify-sexp expand-extra)
                   (cpscm-defs-cpsed))
              (prog->js-list (cpscm-defs)))))
        p)))))

(define (prog->js-list prog)
  (map top-sexp->js (prog->is prog)))

(def-in-module scm2js:compile
  (cpscm-compiler prog->js-list display))

;; To compile test-case:
;; (with-output-to-file "t.js" (cut display (sexp->js (simplify-sexp (def->cps def)))))
(define js-test-cases
  '(
    (define (f x) (call/cc (lambda (cc) (cc 10))))
    (define (f x)
      (define (hnd m ek) (display "in fc") (ek 10))
      (with/fc
       hnd
       (lambda ()
         (dynamic-wind
             (lambda () (display "dwb"))
             (lambda () (car 1))
             (lambda () (display "dwa"))))))
    (define (f x)
      (call-with-values
          (lambda () (values 10 20))
        (lambda (a b) (+ a b))))
    (define (f x)
      (dynamic-wind
          (lambda () (display "B"))
          (lambda () (error 1) (display "T"))
          (lambda () (display "A"))))
    ))
)
