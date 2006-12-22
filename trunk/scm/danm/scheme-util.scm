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

(require-extension (srfi 1))
(require-extension (srfi 2))
(require-extension (srfi 6))   ;; string ports
(require-extension (srfi 8))   ;; receive
(require-extension (srfi 13))  ;; string lib
(require-extension (srfi 26))  ;; cut
(require-extension (srfi 31))  ;; rec
(require-extension (srfi 39))  ;; parameters

(require-library 'danm/scheme-macros) (import danm/scheme-macros)
(require-library 'danm/combinators) (import danm/combinators)

(module
 danm/scheme-util
 (atom? improper-map split-at-right alist-diff with-input-from-str with-output-to-str port->sexp-list port->string read-list read-list/string cout)

 (cond-expand
  (sisc (import string-io))
  (plt (require (only (lib "misc.ss" "swindle") with-output-to-string)))
  (else))

 (define (atom? x)
   (any (cut <> x)
        (list symbol? number? char? string? boolean? null?)))

 (define (improper-map f l)
   (cond ((null? l) '())
         ((not (pair? l)) (f l))
         (else (cons (f (car l)) (improper-map f (cdr l))))))

 (define (split-at-right l n)
   (receive (l1 l2) (split-at (reverse l) n)
     (values (reverse! l2) (reverse! l1))))
   
 (define (alist-diff eq?-pred from . what)
   (define removed (map car (apply append what)))
   (remove (lambda (b) (member (car b) removed eq?-pred)) from))
 
 (define (with-input-from-str str f)
   (cond-expand
    ((or sisc chicken guile) (with-input-from-string str f))
    (else
     (let ((std (current-input-port)) (p (open-input-string str)))
       (current-input-port p)
       (let*-result ((x (f)))
                    (current-input-port std)
                    (close-input-port p))))))
 
 (define (with-output-to-str f)
   (cond-expand
    ((or sisc chicken guile) (with-output-to-string f))
    (else
     (let ((std (current-output-port)) (p (open-output-string)))
       (current-output-port p)
       (f)
       (let*-result ((x (get-output-string p)))
                    (current-output-port std)
                    (close-output-port p))))))
 
 (cond-expand
  (scsh)
  (else
   (define (port->sexp-list p)
     (let loop ((l (list)))
       (let ((sexp (read p)))
         (if (eof-object? sexp)
             (reverse! l)
             (loop (cons sexp l))))))
   ))
 
 (cond-expand
  (scsh)
  (else
   (define (port->string p)
     (string-unfold eof-object? values
                    (lambda (x) (read-char p))
                    (read-char p)))
   ))
 
 (define (read-list)
   (port->sexp-list (current-input-port)))
 
 ;; Reads a list of s-expressions from a string
 (define (read-list/string s)
   (if s
       (with-input-from-str s read-list)
       (list)))
 
 (define (cout . args)
   (for-each (lambda (x)
               (if (procedure? x) (x) (display x)))
             args)) 
 
 )
