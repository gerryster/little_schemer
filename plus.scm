(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))


(define plus
  (lambda (a b)
    (cond
      ((zero? b) a)
      (else (plus (add1 a) (sub1 b)))
    )
))
