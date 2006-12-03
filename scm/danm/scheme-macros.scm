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

(module
  danm/scheme-macros
  (when unless push! inc! dec! macro-identity macro-if macro-list macro-cons macro-append macro-reverse syntax-symbol? values->list destructuring-bind destructuring-bind-lax dbind dbind-lax wmatch def-in-module let1 let*-result begin0 let/collection let/plist let/alist cut+ define/opt let/goto let/cc store/cc! ignore-errors ttrace s+)
  
(cond-expand (plt) (else
(define-syntax when
  (syntax-rules ()
    ((_ cond . body)
     (if cond (begin . body)))))

(define-syntax unless
  (syntax-rules ()
    ((_ cond . body)
     (if (not cond) (begin . body)))))
))

(define-syntax push!
  (syntax-rules () ((_ x place) (set! place (cons x place)))))

(define-syntax inc! (syntax-rules ()
                      ((_ x n) (set! x (+ x n)))
                      ((_ x) (inc! x 1))))
(define-syntax dec! (syntax-rules ()
                      ((_ x) (inc! x -1))
                      ((_ x n) (inx! x (- n)))))

;; For use from other macros
(define-syntax macro-identity
  (syntax-rules () ((_ x) x)))
(define-syntax macro-if
  (syntax-rules ()
    ((_ #t then else) then)
    ((_ #f then else) else)))
(define-syntax macro-list
  (syntax-rules () ((_ . x) x)))
(define-syntax macro-cons
  (syntax-rules () ((_ x y) (x . y))))
(define-syntax macro-append
  (syntax-rules () ((_ (x ...) ...) (x ... ...))))
(define-syntax macro-reverse 
  (syntax-rules () 
    ((_ e) (macro-reverse e ())) 
    ((_ (e . rest) r) (macro-reverse rest (e . r))) 
    ((_ () r) r)))

;; Oleg's technique, see http://community.schemewiki.org/?syntax-symbol%3F
(define-syntax syntax-symbol? 
  (syntax-rules () 
    ((syntax-symbol? (?x . ?y) ?sk ?fk) ?fk) 
    ((syntax-symbol? #(?x ...) ?sk ?fk) ?fk) 
    ((syntax-symbol? ?x ?sk ?fk) 
     (let-syntax ((magical-mystery-macro 
                   (syntax-rules () 
                     ((magical-mystery-macro ?x ??sk ??fk) ??sk) 
                     ((magical-mystery-macro ?y ??sk ??fk) ??fk)))) 
       (magical-mystery-macro the-walrus ?sk ?fk)))))

(define-syntax values->list
  (syntax-rules ()
    ((_ form) (call-with-values (lambda () form) (lambda x x)))))

(cond-expand (plt) (else
(define-syntax begin0
  (syntax-rules ()
    ((_ form . forms)
     (let ((result form))
       (begin . forms)
       result))))
))
  
(define-syntax let1
  (syntax-rules ()
    ((_ b v . body)
     (let ((b v)) . body))))

(define-syntax let*-result
  (syntax-rules ()
    ((_ ((klast vlast)) e1 ...)
     (let ((klast vlast)) e1 ... klast))
    ((_ ((k v) . rest) e1 ...)
     (let ((k v)) (let*-result rest e1 ...)))
    ((_ klast vlast e1 ...)
     (let ((klast vlast)) e1 ... klast))))

(define-syntax define-values
  (syntax-rules ()
    ((_ "gentmp" (tmp ...) () (var ...) expr)
     (begin (define var (undefined)) ...
            (receive (tmp ...) expr
              (set! var tmp) ...
              (if #f #f))))
    ((_ "gentmp" (tmp ...) (v v2 ...) (var ...) expr)
     (define-values "gentmp" (tmp ... tmp1) (v2 ...) (var ...) expr))
    ((_ (var  ...) expr)
     (define-values "gentmp" () (var ...) (var ...) expr))
    ((_ . else)
     (lambda "malformed define-values" (define-values . else)))
    ))

(define-syntax let/collection
  (syntax-rules ()
    ((_ () get e1 e2 ...) (let () e1 e2 ...))
    ((_ ((name def key) . rest) get . body)
     (let ((name (get key def)))
       (let/collection
        rest get . body)))
    ((_ ((name def) . rest) get . body)
     (let/collection ((name def 'name) . rest) get . body))
    ((_ (name . rest) get . body)
     (let/collection ((name #f 'name) . rest) get . body))))

(define-syntax let/plist
  (syntax-rules ()
    ((_ bs ht . body)
     (let ((get (lambda (k def) (define x (memv k ht)) (if x (cadr x) def))))
       (let/collection bs get . body)))))

(define-syntax let/alist
  (syntax-rules ()
    ((_ bs ht . body)
     (let ((get (lambda (k def) (define x (assv k ht)) (if x (cdr x) def))))
       (let/collection bs get . body)))))

(define-syntax def-in-module
  (syntax-rules ()
    ((_ name def) (module (name) (define name #f) (set! name def)))))

(define-syntax destructuring-bind
  (syntax-rules ()
    ((_ (pat1 . pat2) val . body)
     (let ((temp val))
       (destructuring-bind pat1 (car temp)
                           (destructuring-bind pat2 (cdr temp) . body))))
    ((_ #(pat ...) val . body)
     (destructuring-bind (pat ...) (vector->list val) . body))
    ((_ () val . body)
     (apply (lambda () . body) val))
    ((_ var val . body)
     (syntax-symbol? var
                     (let ((var val)) . body)
                     (if (equal? var val)
                         (let () . body)
                         (error "dbind: mismatch"))))))

;; Allows extra elements in pattern lists (will be assigned #f)
;; and in values (will be ignored)
(define-syntax destructuring-bind-lax
  (syntax-rules ()
    ((_ (pat1 . pat2) val . body)
     (let ((temp ((lambda (v) (if (null? v) '(#f) v)) val)))
       (destructuring-bind-lax
        pat1 (car temp)
        (destructuring-bind-lax pat2 (cdr temp) . body))))
    ((_ #(pat ...) val . body)
     (destructuring-bind-lax (pat ...) (vector->list val) . body))
    ((_ () val . body)
     (apply (lambda () . body) '()))
    ((_ var val . body)
     (syntax-symbol? var
                     (let ((var val)) . body)
                     (if (equal? var val)
                         (let () . body)
                         (error "dbind: mismatch"))))))

;; Wright match
(define-syntax wmatch
  (syntax-rules (quote or and)
    ((_ val c . clauses)
     (let ((v val))
       (wmatch (v (lambda () (error `(wmatch mismatch ,val)))
                  (c . clauses)))))
    ((_ (val fail ()))
     (fail))
    ((_ (val fail (clause . clauses)))
     (let ((next (lambda () (wmatch (val fail clauses)))))
       (wmatch (val next #f clause))))
    ;; match OR
    ((_ (val fail #f ((or) . body)))
     (fail))
    ((_ (val next #f ((or p1 . ps) . body)))
     (let ((next2 (lambda () (wmatch (val next #f ((or . ps) . body))))))
       (wmatch (val next2 #f (p1 . body)))))
    ;; match AND
    ((_ (val next #f ((and) . body)))
     (let () . body))
    ((_ (val next #f ((and p1 . ps) . body)))
     (wmatch (val next #f
                  (p1 (wmatch (val next #f ((and . ps) . body)))))))
    ;; match quoted symbol
    ((_ (val next #f ((quote q) . body)))
     (if (equal? val 'q)
         (let () . body)
         (next)))
    ;; match cons
    ((_ (val next #f ((pat1 . pat2) . body)))
     (if (pair? val)
         (wmatch ((car val) next #f
                  (pat1 (wmatch ((cdr val) next #f
                                 (pat2 . body))))))
         (next)))
    ;; match vector
    ((_ (val next #f (#(pat ...) . body)))
     (if (vector? val)
         (wmatch ((vector->list val) next #f ((pat ...) . body)))
         (next)))
    ;; match empty list
    ((_ (val next #f (() . body)))
     (if (null? val)
         (let () . body)
         (next)))
    ;; match atom
    ((_ (val next #f (var . body)))
     (syntax-symbol? var
                     (let ((var val)) (let () . body))
                     (if (equal? var val)
                         (let () . body)
                         (next))))
    ))

(define-syntax dbind
  (syntax-rules () ((_ . rest) (destructuring-bind . rest))))
(define-syntax dbind-lax
  (syntax-rules () ((_ . rest) (destructuring-bind-lax . rest))))

;; Like cut, but can add ignored slots using _
(define-syntax cut+
  (syntax-rules (_ <> <...>)
    ((cut+ "int" as (proc x ...)) (lambda as ((begin proc) x ...)))
    ((cut+ "int" (a ...) (proc x ...) <...>)
     (lambda (a ... . rest) (apply proc x ... rest)))
    ((cut+ "int" (a ...) (b ...) <> . args)
     (cut+ "int" (a ... x) (b ... x) . args))
    ((cut+ "int" (a ...) (b ...) _  . args)
     (cut+ "int" (a ... dummy) (b ...) . args))
    ((cut+ "int" (a ...) (b ...) x  . args)
     (cut+ "int" (a ...) (b ... x) . args))
    ((cut+ . args) (cut+ "int" () () . args))))

(define-syntax define/opt
  (syntax-rules ()
    ((_ (name . bindings) . bodies)
      (define/opt "seek-optional" bindings () ((name . bindings) . bodies)))

    ((_ "hnd-opt" rest bodies (var init))
     (let ((var (if (null? rest) init
                    (if (null? (cdr rest)) (car rest)
                        (error `("extra rest" ,rest))))))
       . bodies))
    ((_ "hnd-opt" rest bodies var) (define/opt "hnd-opt" rest bodies (var #f)))
    ((_ "hnd-opt" rest bodies (var init) . other-vars)
     (let ((var (if (null? rest) init (car rest)))
           (new-rest (if (null? rest) '() (cdr rest))))
       (define/opt "hnd-opt" new-rest bodies . other-vars)))
    ((_ "hnd-opt" rest bodies var . other-vars)
     (define/opt "hnd-opt" rest bodies (var #f) . other-vars))
    ((_ "hnd-opt" rest bodies)		; no optional args, unlikely
     (let ((_ (or (null? rest) (error `("extra rest" ,rest)))))
       . bodies))

    ((_ "seek-optional" ((_opt-bindings ...))
       (reqd ...) ((name . _bindings) . _bodies))
     (define (name reqd ... . _rest)
       (define/opt "hnd-opt" _rest _bodies _opt-bindings ...)))

    ((_ "seek-optional" (x . rest) (reqd ...) form)
      (define/opt "seek-optional" rest (reqd ... x) form))

    ((_ "seek-optional" not-a-pair reqd form)
      (define . form))			; No optional found, regular define

    ((define/opt name body)		; Just the definition for 'name',
      (define name body))		; for compatibilibility with define
))

;; Creates a continuation that can later be invoked to GOTO a certain spot
;; Examples: (let/goto again (if (zero? (read)) (again)))
(define-syntax let/goto
  (syntax-rules ()
    ((_ name . body)
     (let ((name #f))
       (call/cc (lambda (c) (set! name c)))
       . body))))

(cond-expand (plt) (else
(define-syntax let/cc
  (syntax-rules ()
    ((let/cc variable . body)
     (call-with-current-continuation
      (lambda (variable) . body)))))
))

(define-syntax store/cc!
  (syntax-rules ()
    ((_ k-var body ...)
     (call-with-current-continuation
      (lambda (k) (set! k-var k) body ...)))))

(define (ignore-errors thunk)
  (let/cc exit
          (dynamic-wind
              (lambda () #f)
              thunk
              (lambda () (exit #f)))))

(define-syntax ttrace
  (syntax-rules ()
    ((_ f)
     (let ((origf f))
       (set! f (lambda args
                 (map display (list "Trace: in  " (cons 'f args))) (newline)
                 (let ((res (apply origf args)))
                   (map display (list "Trace: out " (cons 'f args) " => " res))
                   (newline)
                   res)))))))
(define-syntax s+
  (syntax-rules ()
    ((_ . rest) (string-append . rest))))

)
