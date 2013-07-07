(load "add1-sub1")

; Little Schemer, p. 74.  Equal to.
(define eq
  (lambda (m n)
    (cond
      ((< m n) #f)
      ((> m n) #f)
      (else #t)
    )
))
