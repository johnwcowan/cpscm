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

(require-library 'danm/scheme-util) (ximport danm/scheme-util)

(define int-def-fun->letrec? (make-parameter #t))

(define gensym-cnt 0)
(define/opt (xgensym ((info "")))
  (set! gensym-cnt (+ 1 gensym-cnt))
  (if (symbol? info) (set! info (s+ ":" (symbol->string info) ":")))
  (string->symbol
   (s+ " %gs:" info (number->string gensym-cnt))))

;; TODO: these pollute the namespace, but they need to be defined
;; in the host system as well, so it's hard to mangle them.
;; Using the space prefix to minimize conflicts is evil (but works).
(define boolean->combinator '| boolean->combinator|)

(define (if->combinator sexp)
  (define condval (second sexp))
  (define alts (cddr sexp))
  `((,boolean->combinator ,condval)
    (lambda () ,(car alts))
    (lambda () ,(if (null? (cdr alts)) 'undefined
                    (second alts)))))

(define (wrap-begin exprs)
  (set! exprs (apply append (map unwrap-begin exprs)))
  (if (null? (cdr exprs)) (car exprs) `(begin ,@exprs)))
;; Converts a lambda body to an s-exp list.
(define (unwrap-begin sexp)
  (wmatch sexp
          (('begin . body) body)
          (_ (list sexp))))

;; Converts an s-exp to ANF, represented as a list of substitutions.
;; Implemented using depth-first traversal.
;; Also expands (if) forms to combinators.
;; Example:
;; (f (g x y)) -> ((g1361 f g1360) (g1360 g x y))
(define (sexp->anf sexp)
  (define pass-thru '(lambda quote))
  (define substs '())
  (define (process-kids args)
    (reverse! (fold
               (lambda (k new-kids) (cons (dfs k) new-kids))
               '() args)))
  (define (dfs t)
    (if (pair? t)
        (let ((head (car t)) (args (cdr t)))
          (cond
           ((memq head pass-thru) t)
           ((eq? head 'if) (dfs (simplify-sexp (if->combinator t))))
           ((and (pair? head) (not (eq? (car head) 'lambda)))
            (dfs `(apply ,head ,@args '())))
           ((eq? head 'begin)
            (receive (ret rignored) (car+cdr (reverse args))
              (process-kids (reverse! rignored))
              (dfs ret)))
           (else
            (let ((self (xgensym
                         (if (symbol? head)
                             (s+ ":ret-" (symbol->string head) ":") "")))
                  (new-kids (process-kids args)))
              (push! `(,self ,head ,@new-kids) substs)
              self))))
        t))
  (let ((top (dfs sexp)))
    (cons `(,(xgensym 'top) values ,top) substs)))

(define (lambda-form? x)
  (and (pair? x) (eq? (car x) 'lambda)))

;; Checks whether the argument is a computation.
;; Constants plus lambda forms are "values", others are "computations".
(define (computation? x)
  (and (pair? x) (not (memq (car x) '(lambda quote)))))

(define (def-fun->lambda-form sexp)
  (wmatch sexp
          (('define (f . args) . body) `(define ,f (lambda ,args . ,body)))
          (_ sexp)))

;; Destructures actual parameters according to formals.
;; Returns the bindings a-list or #f for failure.
(define (bind-formals formals vals)
  (define (loop formals vals bnd)
    (cond
     ((null? formals) (if (null? vals) bnd #f))
     ((not (pair? formals)) (cons (cons formals vals) bnd))
     ((null? vals) #f)
     (else (loop (cdr formals) (cdr vals)
                 (cons (cons (car formals) (car vals)) bnd)))))
  (and-let* ((bnd (loop formals vals '()))) (reverse! bnd)))

;; Extracts the names of all variables in a formal parameter list.
;; Only useful because of the rest argument, (lambda (x . rest) ...)
(define (formal-names formals)
  (cond ((pair? formals)
         (cons (car formals) (formal-names (cdr formals))))
        ((null? formals) formals)
        (else (list formals))))

;; Computes variables shadowed by a lambda form
;; (i.e. the lambda's formals + internal defs).
(define (shadowed formals body)
  (receive (defs bexpr) (sep-int-defs body)
    (append (formal-names formals)
            (map (compose second def-fun->lambda-form) defs))))

;; Substitutes "constants" for some bound variables in a function body.
;; If any of the bound variables is (set!) inside the body, substitution
;; for that variable is aborted.
;; Local definitions shadow (and protect) the initial bindings.
;; @return three values: resulting body, list of bindings not substituted,
;; and list of unused bindings.
(define (subst-const bnd dontsubst body)
  (define restart #f)
  (define masked (make-parameter (shadowed '() body)))
  (define unsubst '()) (define unused dontsubst)
  (define/opt (get-bnd var (ref?))
    (and-let* (( (symbol? var))
               (unshadowed? (not (member var (masked)))))
              (if ref? (set! unused (alist-delete var unused)))
              (assq var bnd)))
  (define (sexp-subst sexp)
    (wmatch sexp
            (('define (f . formals) . body)
             (sexp-subst (def-fun->lambda-form sexp)))
            (('define x v) `(define ,x ,(sexp-subst v)))
            (('lambda formals . body)
             (parameterize
                 ((masked (append (shadowed formals body) (masked))))
               `(lambda ,formals . ,(list-subst body))))
            (('set! var val)  ;; if a binding is set!, restart without it
             (cond ((get-bnd var) =>
                    (lambda (b)
                      (set! bnd (alist-delete var bnd eq?))
                      (push! b unsubst)
                      (restart 'dummy)))
                   (else `(set! ,var ,(sexp-subst val)))))
            (('quote _) sexp)
            (_ (cond ((pair? sexp) (list-subst sexp))
                     ((get-bnd sexp #t) => cdr)
                     (else sexp)))))
  (define (list-subst l) (map sexp-subst l))
  (store/cc! restart)
  (if (every null? (list bnd dontsubst))
      (values body (reverse! unsubst) unused)
      (let ((res (list-subst body)))
        (values res (reverse! unsubst) unused))))

(define (simplify-application formals body vals)
  (wmatch (simplify-sexp `(lambda ,formals . ,body))
          (('lambda f2 . b2) (set! formals f2) (set! body b2)))
  (let ((bnd (bind-formals formals (simplify-sexp-list vals))))
    (if bnd
        (receive (tosubst dontsubst)
            (partition!
             (lambda (b)
               (any (cute <> (cdr b))
                    (list symbol? number? null? char? boolean?)))
             bnd)
          (receive (simplified unsubst unused)
              (subst-const tosubst dontsubst body)
            (set! unsubst
                  (append (alist-diff eq? dontsubst unused) unsubst))
            (wrap-begin
             `(
               ,@(map cdr unused)
               ,@(if (and (null? unsubst)
                          (wmatch simplified
                                  ((('define . def) . more) #f) (_ #t)))
                     simplified
                     `(((lambda ,(map car unsubst) . ,simplified)
                        ,@(map cdr unsubst))))))))
        `((lambda ,formals . ,body) ,@vals))))

;; Simplifies an s-expression.
(define (simplify-sexp sexp)
  (cond
   ((atom? sexp) sexp)
   (else
    (wmatch sexp
            (('define (f . formals) . body)
             (simplify-sexp (def-fun->lambda-form sexp)))
            (('define x val)
             `(define ,x ,(simplify-sexp val)))
            (('begin sexp) (simplify-sexp sexp))
            ((('lambda formals . body) . vals)
             (simplify-application formals body vals))
            (('lambda formals (f . args))  ;; ... and formals, args match...
             (set! f (simplify-sexp f)) (set! args (simplify-sexp-list args))
             (let ((bnd (bind-formals formals args)))
               (if (and bnd (not (computation? f))
                        (or (not (lambda-form? f))
                            (bind-formals (cadr f) args))
                        (every (lambda (b) (eq? (car b) (cdr b))) bnd))
                   f `(lambda ,formals ,(simplify-sexp `(,f . ,args))))))
            (('lambda formals . body)
             `(lambda ,formals . ,(simplify-sexp-list body)))
            (('quote x) sexp)
            ((f . args) (map simplify-sexp sexp))
            (_ sexp)))))

(define (simplify-sexp-list l)
  (apply append (map (compose unwrap-begin simplify-sexp) l)))

;; Walks an s-expressions rewriting lambda bodies with rewrite-lambda-int-defs.
(define (rewrite-int-defs sexp)
  (wmatch sexp
          (('lambda . rest) (rewrite-lambda-int-defs sexp))
          (('define (f . args) . body)
           (rewrite-int-defs (def-fun->lambda-form sexp)))
          ((head . rest) (map rewrite-int-defs sexp))
          (_ sexp)))

;; Converts definitions to set!'s.
;; All initializers are computed before any set!'s occur.
(define (defs->sets bnd)
  (define temps (map (lambda (d) (xgensym (car d))) bnd))
  `((lambda ,temps ,@(map (lambda (temp d) `(set! ,(car d) ,temp)) temps bnd))
    ,@(map cdr bnd)))

;; Rewrites internal definitions in a function's body.
;; Non-function internal defs are converted to a (let) form.
;; Multiple expressions are wrapped in a begin block.
;; Rewriting is influenced by parameter int-def-fun->letrec? (ugly).
(define (rewrite-body-int-defs body)
  (define (make-int-defs defs)
    (map (lambda (d) `(define ,(car d) ,(cdr d))) defs))
  (let loop ((body body) (defs '()) (locals '()) (exprs '()))
    (if
     (null? body)
     (let ((defs (reverse! defs)) (exprs (reverse! exprs)))
       (define tolet
         (if (int-def-fun->letrec?)
             (append locals defs) locals))
       (define int-defs (if (int-def-fun->letrec?) '() (make-int-defs defs)))
       (cond ((null? exprs) (error `(no expressions in body ,body)))
             ((null? tolet) `(,@int-defs ,(wrap-begin exprs)))
             ;; nice optimization that doesn't work on recursive functions
             ;; ((null? (cdr tolet))
             ;;  `(((lambda (,(caar tolet)) ,@int-defs ,(wrap-begin exprs))
             ;;     ,(cdar tolet))))
             (else `(((lambda ,(map car tolet)
                        ,@int-defs
                        ,(wrap-begin
                          (append
                           (if (int-def-fun->letrec?)
                               (map (lambda (d) `(set! ,(car d) ,(cdr d)))
                                    defs)
                               '())
                           (if (null? locals) '() (list (defs->sets locals)))
                           exprs)))
                      ,@(map (lambda _ ''undefined) locals)
                      ,@(if (int-def-fun->letrec?)
                            (map (lambda _ ''undefined) defs) '()))))))
     (let ((sexp (car body)) (brest (cdr body)))
       (wmatch sexp
               ((or ('define (f . args) . body)
                    ('define f ('lambda args . body)))
                (let ((form (third (def-fun->lambda-form sexp))))
                  (loop brest
                        `((,f . ,(rewrite-lambda-int-defs form)) ,@defs)
                        locals exprs)))
               (('define x val)
                (loop
                 brest defs `((,x . ,(rewrite-int-defs val)) ,@locals) exprs))
               (_ (loop brest defs locals
                        `(,(rewrite-int-defs sexp) ,@exprs))))))))

(define (rewrite-lambda-int-defs form)
  `(lambda ,(second form) . ,(rewrite-body-int-defs (cddr form))))

;; Separates internal definitions from the one expression in the body
;; of a function processed by rewrite-int-defs.
(define (sep-int-defs body)
  (partition
   (lambda (sexp) (wmatch sexp (('define . def) #t) (_ #f)))
   body))
