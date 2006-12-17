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

;; Usage:
;; (import lisp-backend-conformance)
;; (create-lisp-conformance-tester)
;; clisp -i cpscm-drv.lsp -i prelude.lsp -i conformance-test.lsp

(require-library 'conformance) (import conformance)
(require-library 'scm2js) (import scm2js)

(module js-backend-conformance (create-js-conformance-tester)
  (define (wrout l) (for-each write l))
  
  (define (create-js-conformance-tester)
    (with-output-to-file "conformance-test.js"
      (lambda ()
        (define (sym-pair p)
          (s+ "{ scm: '" (symbol->string p) "', js: '" (symbol->js p) "' }"))
        (cout
         "load ('cpscm-drv.js'); load ('prelude.js');\n"
         "var funs = ["
         (string-join (map sym-pair native-procs) ", ")
         " ]"
         "
function chk (name) {
  try {
    return eval (name);
  } catch (e) { return false; }
}

var wr = new java.io.PrintWriter (
  new java.io.BufferedWriter (new java.io.FileWriter ('js-undef-procs.txt')));
for (i = 0; i < funs.length; i++) {
  if (! chk (funs [i].js)) wr.println (funs [i].scm);
}
wr.close ();
"
         ))))

  )
