(define (bubble-sort! n cmp cref cset!)
  (define n-1 (- n 1))
  (define (chk i)
    (let ((x (cref i)) (y (cref (+ i 1))))
      (if (cmp x y) #f
          (begin
            (cset! i y) (cset! (+ i 1) x)
            #t))))
  (define (pass i mod?)
    (if (= i n-1) mod?
        (pass (+ i 1) (or (chk i) mod?))))
  (let loop ()
    (if (pass 0 #f) (loop))))

;(define (bubble-sort-vec v)
;  (bubble-sort! (vector-length v) <
;                (lambda (i) (vector-ref v i))
;                (lambda (i x) (vector-set! v i x)))
;  v)
