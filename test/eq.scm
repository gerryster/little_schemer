(set! load/suppress-loading-message? #t)

(load "eq")

(load "vendor/test-manager/load")

(in-test-group eq
  (define-each-test
    (assert-false (eq 1 0))
    (assert-true (eq 1 1))
    (assert-false  (eq 0 1))
    (assert-true  (eq 90 90))
  )
)

(run-test '(eq))
