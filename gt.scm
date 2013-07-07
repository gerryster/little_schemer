(load "add1-sub1")

; Little Schemer, p. 72.  Greater Than.
(define gt
  (lambda (m n)
    (cond
      ((zero? m) #f)
      ((zero? n) #t)
      (else (gt (sub1 m)(sub1 n)))
    )
))
