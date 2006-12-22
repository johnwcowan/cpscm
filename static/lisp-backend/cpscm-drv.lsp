;; (defmacro cpscm__global (var val &optional (doc nil docp))     
;;   (let ((backing-var 
;;          (intern (concatenate
;;                   'string  (symbol-name '#:*deflex-var-) 
;;                   (symbol-name var) (symbol-name '#:*))
;;                  (symbol-package var))))
;;     `(progn 
;;        (defparameter ,backing-var ,val ,doc) 
;;        ; ,@(when docp `((setf (documentation ',var 'variable) ,doc)))
;;        (define-symbol-macro ,var ,backing-var))))

;; Probably broken in theory. In practice, works in CLISP, GCL, and
;; (albeit with warnings) SBCL. (defvar) makes symbols pervasively
;; special, so it's useless.
(defmacro cpscm__global (x val)
  `(locally (declare (special ,x)) (setq ,x ,val) 
            (setf (get ',x 'cpscm__fname) ',x)))

(defmacro cpscm__declare-globals (&rest vars)
  `(progn ,@(mapcar (lambda (v) `(cpscm__global ,v nil)) vars)))

(defun cpscm__cpswrap (f)
  (lambda (k &rest args)
    (funcall k (apply f args))))

(macrolet
 ((d (name f) `(cpscm__global ,(read-from-string
                         (concatenate 'string "cpscm" (string name)))
                       (cpscm__cpswrap #',f))))
 (d null? null) (d pair? consp)
 (d procedure? functionp)
 (d symbol? symbolp) (d vector? vectorp) (d character? characterp)
 (d number? numberp) (d integer? integerp) (d rational? rationalp)
 (d char? characterp)
 (d even? evenp) (d odd? oddp) (d zero? zerop)
 (d positive? (lambda (x) (> x 0))) (d negative? (lambda (x) (< x 0)))
 (d char<? char<) (d char>? char>) (d char<=? char<=) (d char>=? char>=)
 (d char-ci<? char-lessp) (d char-ci>? char-greaterp)
 (d char-ci<=? char-not-greaterp) (d char-ci>=? char-not-lessp)
 (d char=? char=) ; (d char-ci=? char-equalp)
 (d char->integer char-int)
 (d symbol->string string) (d string->symbol intern)
 (d string-append (lambda (args) (apply #'concatenate 'string args)))
 (d number->string
    (lambda (n &optional (r 10)) (format nil (format nil "~aR" r) n)))
 (d vector-length (lambda (v) (car (array-dimensions v))))
 (d vector-ref aref)
 (d make-vector (lambda (n &optional x) (make-array n :initial-element x)))
 (d vector-set! (lambda (v i x) (setf (aref v i) x)))
 (d eq? eq) (d eqv? eql) (d equal? equalp)
 (d set-car! rplaca) (d set-cdr! rplacd)  ;; TODO: return unspecified
 (d display princ) (d newline terpri) (d write prin1)
 )

(cpscm__global cpscm__normal-apply #'apply)

(macrolet
 ((d (name) `(cpscm__global ,(read-from-string
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

(defstruct cpscm__delay thunk)
(cpscm__global cpscm_x_delay
  (lambda (k thunk) (funcall k (make-cpscm__delay :thunk thunk))))
(cpscm__global cpscmpromise?
  (lambda (k p) (funcall k (cpscm__delay-p p))))
(cpscm__global cpscmforce
  (lambda (k p) (funcall (cpscm__delay-thunk p) k)))

(defstruct trampoline thunk)

(defun cpscm__trampoline (thunk)
  (make-trampoline :thunk thunk))

(defmacro cpscm__trace (f)
  (let ((oldf (gensym)) (args (gensym)) (result (gensym)))
    `(let ((,oldf ,f))
       (setq ,f (lambda (&rest ,args)
                  (print (format nil "Trace in : ~a" (get ',f 'cpscm__fname)))
                  (let ((,result (apply ,oldf ,args)))
                    ;; result usually a trampoline
                    ,result))))))

(cpscm__global
 cpscm_x_boolean->combinator
 (let ((combthen (lambda (kk then else)
                   (cpscm__trampoline (lambda () (funcall then kk)))))
       (combelse (lambda (kk then else)
                   (cpscm__trampoline (lambda () (funcall else kk))))))
   (lambda (test)
     (if test combthen combelse))))

(defun cpscm__reduce-trampoline (cc)
    (loop for i from 1 while (trampoline-p cc) do 
          ;; (print `(Executing ,cc))
          (setq cc (funcall (trampoline-thunk cc))))
    cc)

(defun cpscm__drive (cc excHnd)
  (handler-case
   (cpscm__reduce-trampoline cc)
  (condition (e) (funcall excHnd e))))

;; placeholders to quench warnings
(cpscm__declare-globals current-output-port cpscmmap cpscmfor-each cpscmreverse cpscmreverse! cpscmappend cpscmappend! cpscm__pack-vals)
