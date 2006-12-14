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

;; Usage:
;; (import lisp-backend-conformance)
;; (create-lisp-conformance-tester)
;; clisp -i cpscm-drv.lsp -i prelude.lsp -i conformance-test.lsp

(require-library 'conformance) (import conformance)
(require-library 'scm2lisp) (import scm2lisp)

(module lisp-backend-conformance (create-lisp-conformance-tester)
  (define (wrout l) (for-each write l))
  
  (define (create-lisp-conformance-tester)
    (with-output-to-file "conformance-test.lsp"
      (lambda ()
        (wrout
         `(
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
    
