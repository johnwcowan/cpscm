(require-library 'conformance) (import conformance)
(require-library 'scm2lisp) (import scm2lisp)

(module lisp-backend-conformance (create-lisp-conformance-tester)
  (define (wrout l) (for-each write l))
  
  (define (create-lisp-conformance-tester)
    (with-output-to-file "conformance-test.lsp"
      (lambda ()
        (wrout
         `(
           (defun do-test (scm-name lisp-name)
             (if (not (boundp lisp-name))
                  (progn (princ scm-name) (terpri))))

           (with-open-file
            (out "lisp-undef-procs.txt"
                 :direction :output :if-exists :supersede)
            (flet ((do-test (scm-name lisp-name)
                    (if (not (boundp lisp-name))
                        (progn (princ scm-name out) (terpri out)))))
            ,@(map (lambda (p) `(do-test ',(symbol->string p)
                                         ',(symbol->lisp p)))
                   native-procs)))
           )))))
  )
    
