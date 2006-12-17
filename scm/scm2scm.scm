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
  (let* ((rbody (rewrite-body-int-defs body)) (sexp (car rbody))
         (ret
          (let ((lexp (sexp->cpscm sexp)))
            (if (and (trampoline?) (needs-trampoline? sexp))
                `(cpscm__trampoline ,lexp) lexp))))
    (or (null? (cdr rbody)) (error 'lambda->cpscm))
    `(lambda ,(formals->cpscm formals)
       ,ret)))

(define (top-sexp->cpscm sexp)
  (sexp->cpscm sexp #t))

(define/opt (sexp->cpscm sexp (top?))
  (define (do-eval sexp)
    ((if (computation? sexp) drive values)
     (sexp->cpscm sexp)))
  (define drive (if top? (cut list 'cpscm__drive <>) values))
  (define (do-red sexp)
    ((if (needs-trampoline? sexp) (cut list 'cpscm__reduce-trampoline <>)
         values)
     (sexp->cpscm sexp)))
  (wmatch
   sexp
   (('cpscm__trampoline . rest) (error '(sexp->cpscm invoked twice)))
   (('quote x) sexp)
   (('begin . more) (drive `(begin . ,(map do-red more))))
   (('set! var val)
    `(set! ,(symbol->cpscm var) ,(do-eval val)))
   (('define (f . args) . body)
    (sexp->cpscm `(define ,f (lambda ,args . ,body))))
   (('define x val) `(define ,(symbol->cpscm x) ,(do-eval val)))
   (('lambda formals . body) (lambda->cpscm formals body))
   ((f . args) (drive (map sexp->cpscm sexp)))
   (_ (atom->cpscm sexp))))
          
(define (r5rs-defs)
  (call-with-input-file "../doc/r5rs_defs.txt" port->sexp-list))

(define (create-cpscm-prelude)
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
  (define (native-defs-1)
    `(         
      (define-record-type :cpscm__trampoline
        (cpscm__trampoline-create thunk) cpscm__trampoline?
        (text cpscm__trampoline-text cpscm__trampoline-set-text!)
        (thunk cpscm__trampoline-thunk))
      (define-record-type :cpscm__delay
        (cpscm__delay-create thunk) cpscm__delay?
        (thunk cpscm__delay-thunk))
      (define-syntax cpscm__trampoline
        (syntax-rules ()
          ((_ . rest) (let ((tr (cpscm__trampoline-create
                                 (lambda () . rest))))
                        (cpscm__trampoline-set-text! tr 'rest)
                        tr))))
      (define (cpscm__drive sexp)
        (cpscm__reduce-trampoline (cpscm__trampoline sexp)))
      (define (cpscm__reduce-trampoline sexp)
        (let loop ((cc sexp))
          (if (cpscm__trampoline? cc)
              (loop ((cpscm__trampoline-thunk cc))) cc)))
      (define (,(symbol->cpscm boolean->combinator) test)
        (if test
            (lambda (kk then else) (then kk))
            (lambda (kk then else) (else kk))))
      (define (,(symbol->cpscm cpscm-delay) k thunk)
        (k (cpscm__delay-create thunk)))
      (define (,(symbol->cpscm 'promise?) k x)
        (k (cpscm__delay? x)))
      (define (,(symbol->cpscm 'force) k p)
        ((cpscm__delay-thunk p) k))
      (define ,(symbol->cpscm '%cpscm:normal-apply) apply)
      ))
  (parameterize
      ((in-prelude? #t))
    (call-with-output-file "cpscm-drv.scm"
      (lambda (p)
        (define (wrnl x) (pretty-print x p))
        (define (tr-native-def sexp) sexp)
        (for-each wrnl (map tr-native-def (native-defs-1)))
        (for-each
         (lambda (d)
           (unless (memq d `(apply ,@ccfuns ,@hof force promise?))
             (wrnl `(define ,(symbol->cpscm d)
                      (lambda (k . args) (k (apply ,d args)))))))
         (r5rs-defs))
        (for-each
         wrnl
         `(,@(append
              (map (compose top-sexp->cpscm simplify-sexp expand-extra)
                   (cpscm-defs-cpsed))
              (prog->cpscm
                (append (filter hof-def? (r5rs-bootstrap-defs))
                        aux-defs (cpscm-int-defs))))
           (define ,(symbol->cpscm 'call/cc)
             ,(symbol->cpscm 'call-with-current-continuation))
           ))
        ))))

(define (prog->cpscm prog)
  (map top-sexp->cpscm (prog->is prog)))

(def-in-module scm2scm:compile
  (cpscm-compiler prog->cpscm pretty-print))

(module scm2scm () )
