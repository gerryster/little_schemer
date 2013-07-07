(load "add1-sub1")

; Little Schemer, p. 73.  Less Than.
(define lt
  (lambda (m n)
    (cond
      ((zero? n) #f)
      ((zero? m) #t)
      (else (lt (sub1 m)(sub1 n)))
    )
))
