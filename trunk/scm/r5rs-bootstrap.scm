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

(require-library 'danm/scheme-util) (import danm/scheme-util)
(require-extension (srfi 42))

(cond-expand
 (chicken (require 'danm/chicken-srfi-60))
 (else (require-extension (srfi 60))))

(module r5rs-bootstrap (r5rs-bootstrap-defs)

(define (num->cxr-def i n)
  (define num
    (map (cut char=? <> #\1)
         (string->list (string-pad (number->string i 2) n #\0))))
  (define (bool->x x) (if x #\d #\a))
  `(define
     (,(string->symbol
        (s+ "c" (list->string (map bool->x num)) "r"))
      x)
     ,(fold-right (lambda (e last)
                    `(,(string->symbol (string #\c (bool->x e) #\r)) ,last))
           'x num)))

;; Generates definitions for caar, cadr etc.
(define (cxr-defs max)
  (append-ec
   (: n 2 (+ max 1))
   (map (cut num->cxr-def <> n) (iota (arithmetic-shift 1 n)))))
  
(define (r5rs-bootstrap-defs)
  `(
    ,@(cxr-defs 4)
    (define (not x) (if x #f #t))
    (define (list . l) l)
    (define (length l)
      (define (loop l res)
        (if (null? l) res
            (loop (cdr l) (+ res 1))))
      (loop l 0))
    (define (list? l)
      (if (null? l) #t
          (if (pair? l)
              (list? (cdr l))
              #f)))
    (define (list-tail x k)
      (if (zero? k)
          x
          (list-tail (cdr x) (- k 1))))
    (define (list-ref list k) (car (list-tail x k)))
      
    (define (reverse l)
      (define (loop l res)
        (if (null? l) res
            (loop (cdr l) (cons (car l) res))))
      (loop l '()))
    (define (append . ls)
      (define (spill l res)
        (if (null? l) res
            (spill (cdr l) (cons (car l) res))))
      (define (loop ls res)
        (if (null? ls) (reverse! res)
            (loop (cdr ls) (spill (car ls) res))))
      (loop ls '()))

    ;; SRFI-1 stuff used in bootstrap
    (define append! append)  ;; TODO: optimize
    (define (append-reverse rev-head tail)  ;; TODO: optimize
      (append (reverse rev-head) tail))
    (define append-reverse! append-reverse)
    (define (reverse! l) (reverse l))  ;; TODO: optimize
    (define (find-tail pred l)
      (define (lp l)
        (and (not (null? l))
             (if (pred (car l)) l
                 (lp (cdr l)))))
      (lp l))
    (define (find pred list)
      (cond ((find-tail pred list) => car)
            (else #f)))
    
    (define (map f l)
      (define (loop l res)
        (if (null? l) (reverse! res)
            (loop (cdr l) (cons (f (car l)) res))))
      (loop l '()))
    (define (for-each f l)
      (define (loop l)
        (if (null? l) #t
            (begin (f (car l)) (loop (cdr l)))))
      (loop l))
    
    (define (assoc x lis . maybe-=)
      (let ((e (if (null? maybe-=) equal? (car maybe-=))))
        (find (lambda (entry) (e x (car entry))) lis)))
    (define (assq x l) (assoc x l eq?))
    (define (assv x l) (assoc x l eqv?))

    (define (member x lis . maybe-=)
      (let ((e (if (null? maybe-=) equal? (car maybe-=))))
        (find-tail (lambda (y) (e x y)) lis)))
    (define (memq x l) (member x l eq?))
    (define (memv x l) (member x l eqv?))
    
    (define (vector->list v)
      (define n (vector-length v))
      (define (loop i res)
        (if (< i 0) res
            (loop (- i 1) (cons (vector-ref v i) res))))
      (loop (- n 1) '()))
    (define (list->vector l)
      (define n (length l))
      (define v #f)
      (define (loop i l)
        (if (= i n) v
            (begin
              (vector-set! v i (car l))
              (loop (+ i 1) (cdr l)))))
      (set! v (make-vector n))
      (loop 0 l))
    (define (vector . l) (list->vector l))
    (define (vector-fill! v x)
      (define n (vector-length v))
      (let loop ((i 0))
        (if (= i n) #t
            (begin
              (vector-set! v i x)
              (loop (+ i 1))))))

    (define (string . l) (list->string l))
    (define (string-fill! v x)
      (define n (string-length v))
      (let loop ((i 0))
        (if (= i n) #t
            (begin
              (string-set! v i x)
              (loop (+ i 1))))))
    
    (define call/cc call-with-current-continuation)

    (define write-char display)
    
    (define (with-output-to-port p thunk)
      (let ((oldp (current-output-port)))
        (current-output-port p)
        (let ((res (thunk)))
          (current-output-port oldp)
          res)))
    
    ))

)
