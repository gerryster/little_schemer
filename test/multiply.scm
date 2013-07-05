(set! load/suppress-loading-message? #t)

(load "multiply")

(load "vendor/test-manager/load")

(in-test-group multiply
  (define-each-test
    (assert-= 1 (multiply 1 1)  "1 x 1")
    (assert-= 0 (multiply 1 0)  "1 x 0")
    (assert-= 10 (multiply 5 2)  "5 x 2")
    (assert-= 5000 (multiply 100 50)  "100 x 50")
  )
)

(run-test '(multiply))
