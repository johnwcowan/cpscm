(defun cpscm__cpswrap (f)
  (lambda (k &rest args)
    (funcall k (apply f args))))

(macrolet
 ((d (name f) `(defvar ,(read-from-string
                         (concatenate 'string "cpscm" (string name)))
                       (cpscm__cpswrap #',f))))
 (d null? null) (d pair? consp)
 (d symbol? symbolp) (d vector? vectorp) (d character? characterp)
 (d number? numberp) (d integer? integerp) (d rational? rationalp)
 (d even? evenp) (d odd? oddp) (d zero? zerop)
 (d char<? char<) (d char>? char>) (d char<=? char<=) (d char>=? char>=)
 (d char-ci<? char-lessp) (d char-ci>? char-greaterp)
 (d char-ci<=? char-not-greaterp) (d char-ci>=? char-not-lessp)
 (d char=? char=) ; (d char-ci=? char-equalp)
 (d char->integer char-int)
 (d symbol->string string) (d string->symbol intern)
 (d string-append (lambda (args) (apply #'concatenate 'string args)))
 (d vector-length (lambda (v) (car (array-dimensions v))))
 (d vector-ref aref)
 (d make-vector (lambda (n &optional x) (make-array n :initial-element x)))
 (d vector-set! (lambda (v i x) (setf (aref v i) x)))
 (d eq? eq) (d eqv? eql) (d equal? equalp)
 (d set-car! rplaca) (d set-cdr! rplacd)  ;; TODO: return unspecified
 (d display princ) (d newline terpri) (d write prin1)
 (d error (lambda (&rest args) (error "Scheme error: ~S" args)))
 )

(defvar cpscm__normal-apply #'apply)

(macrolet
 ((d (name) `(defvar ,(read-from-string
                       (concatenate 'string "cpscm" (string name)))
                     (cpscm__cpswrap #',name))))
 (d car) (d cdr) (d cons)
 (d <) (d >) (d <=) (d >=) (d =)
 (d +) (d -) (d *) (d /) (d max) (d min)
 (d abs) (d ceiling) (d floor) (d truncate) (d round)
 (d denominator) (d numerator) (d lcm) (d gcd) (d rationalize)
 (d cos) (d sin) (d tan) (d acos) (d asin) (d atan)
 (d sqrt) (d exp) (d expt) (d log)
 (d char-downcase) (d char-upcase)
 )

(defvar cpscm_20_boolean->combinator
        (let ((combthen (lambda (kk then else) (funcall then kk)))
              (combelse (lambda (kk then else) (funcall else kk))))
          (lambda (test)
            (if test combthen combelse))))

(defstruct cpscm__delay thunk)
(defvar cpscm_20_delay
  (lambda (k thunk) (funcall k (make-cpscm__delay :thunk thunk))))
(defvar cpscmpromise?
  (lambda (k p) (funcall k (cpscm__delay-p? p))))
(defvar cpscmforce
  (lambda (k p) (funcall (cpscm__delay-thunk p) k)))

(defstruct trampoline thunk)

(defmacro cpscm__trampoline (&rest body)
  `(make-trampoline :thunk (lambda () . ,body)))

(defun cpscm__reduce-trampoline (cc)
  (loop while (trampoline-p cc) do 
        ;; (print `(Executing ,cc))
        (setq cc (funcall (trampoline-thunk cc))))
  cc)

(defun cpscm__drive (cc excHnd)
  (handler-case
   (cpscm__reduce-trampoline cc)
   (condition (e) (funcall excHnd e))))
