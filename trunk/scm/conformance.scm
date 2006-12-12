(require-library 'cpscm) (import cpscm)

(module conformance (r5rs-procs bootstrap-procs native-procs)
  (def-in-module r5rs-procs
    (call-with-input-file "../doc/r5rs_defs.txt" port->sexp-list))
  
  (define (which-def def)
    (define op (second def))
    (if (pair? op) (car op) op))
  
  (def-in-module bootstrap-procs
    (map which-def (append (cpscm-defs) (cpscm-defs-cpsed))))

  (def-in-module native-procs
    (lset-difference eq? r5rs-procs bootstrap-procs))
)
