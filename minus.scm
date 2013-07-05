(load "add1-sub1")

(define minus
  (lambda (a b)
    (cond
      ((zero? b) a)
      (else (minus (sub1 a) (sub1 b)))
    )
))
