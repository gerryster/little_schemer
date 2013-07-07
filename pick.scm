(load "add1-sub1")

; Little Schemer, p. 76, one-based list index lookup.
(define pick
  (lambda (n lat)
    (cond
      ((= 1 n) (car lat))
      (else (pick (sub1 n) (cdr lat)))
    )
))
