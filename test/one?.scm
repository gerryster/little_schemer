(set! load/suppress-loading-message? #t)

(load "one?")

(load "vendor/test-manager/load")

(in-test-group one?
  (define-each-test
    (assert-true  (one? 1))
    (assert-false (one? 0))
  )
)

(run-test '(one?))
