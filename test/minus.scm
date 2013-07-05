(set! load/suppress-loading-message? #t)

(load "minus")

(load "vendor/test-manager/load")

(in-test-group minus
  (define-each-test
    (assert-= 0 (minus 1 1)  "1 - 1")
    (assert-= 1 (minus 1 0)  "1 - 0")
    (assert-= 3 (minus 5 2)  "5 - 2")
    (assert-= 50 (minus 100 50)  "100 - 50")
  )
)

(run-test '(minus))
