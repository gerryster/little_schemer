(load "add1-sub1")

(define plus
  (lambda (a b)
    (cond
      ((zero? b) a)
      (else (plus (add1 a) (sub1 b)))
    )
))
