(load "add1-sub1")

(define multiply
  (lambda (a b)
    (cond
      ((zero? b) 0)
      (else (+ a (multiply a (sub1 b))))
    )
))
