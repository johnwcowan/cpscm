;; A test for SRFI-1 list=.
;; At some point CPSCM used to hang compiling this file.

(define (list= = . lists)
  (or (null? lists) ; special case

      (let lp1 ((list-a (car lists)) (others (cdr lists)))
	(or (null? others)
	    (let ((list-b (car others))
		  (others (cdr others)))
	      (if (eq? list-a list-b)	; EQ? => LIST=
		  (lp1 list-b others)
		  (let lp2 ((list-a list-a) (list-b list-b))
		    (if (null? list-a)
			(and (null? list-b)
			     (lp1 list-b others))
			(and (not (null? list-b))
			     (= (car list-a) (car list-b))
			     (lp2 (cdr list-a) (cdr list-b)))))))))))

(display (list= eqv? '(1 2 3) '(1 2 4))) (newline)
