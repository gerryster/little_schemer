(load "add1-sub1")

; Little Schemer, p. 74, Exponents.
(define exp
  (lambda (a b)
    (cond
      ((zero? b) 1)
      (else (* a (exp a (sub1 b))))
    )
))
