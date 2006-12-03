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

(require-extension (srfi 1))

(module
  danm/combinators (constantly compose project)

  (cond-expand (plt (require-extension (srfi 1))) (else))

  (define (constantly . X) (lambda args (apply values X)))

  (define (compose . procs)
    (define (compose-2 F G)
      (lambda args
        (call-with-values
            (lambda () (apply G args))
          F)))
    (fold-right compose-2 values procs))
  
  (define (project N)
    (lambda args (list-ref args N)))
  
  )
