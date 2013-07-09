(load "atom?")

; Little Schemer, p. 78, equality for numbers and atoms.
; In mit-scheme, eq? also works for both numbers and atoms.
(define eqan?
  (lambda (a b)
    (cond
      ((and (number? a) (number? b) (= a b)))
      ((and (atom? a) (atom? b) (eq? a b)))
      (else #f)
    )
))
