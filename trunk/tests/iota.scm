(define-syntax receive
  (syntax-rules ()
    ((receive formals expression body ...)
     (call-with-values (lambda () expression)
       (lambda formals body ...)))))

(define (iota count . maybe-start+step)
  (if (< count 0) (error "Negative step count" iota count))
  (receive (start step)
      (case (length maybe-start+step)
        ((0) (values 0 1))
        ((1) (values (car maybe-start+step) 1))  ;; danm: added for conformity
        ((2) (values (car maybe-start+step)
                     (cadr maybe-start+step)))
        (else
         (error "wrong number of arguments to IOTA"
                (cons count maybe-start+step))))
    (let ((last-val (+ start (* (- count 1) step))))
      (do ((count count (- count 1))
	   (val last-val (- val step))
	   (ans '() (cons val ans)))
	  ((<= count 0)  ans)))))

(display (iota 4)) (newline)
