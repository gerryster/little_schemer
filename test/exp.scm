(set! load/suppress-loading-message? #t)

(load "exp")

(load "vendor/test-manager/load")

(in-test-group exp
  (define-each-test
    (assert-= 1   (exp 1 1) "1**1")
    (assert-= 1   (exp 1 0) "1**0")
    (assert-= 4   (exp 2 2) "2**2")
    (assert-= 8   (exp 2 3) "2**3")
    (assert-= 125 (exp 5 3) "5**3")
  )
)

(run-test '(exp))
