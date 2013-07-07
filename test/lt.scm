(set! load/suppress-loading-message? #t)

(load "lt")

(load "vendor/test-manager/load")

(in-test-group lt
  (define-each-test
    (assert-false (lt 1 0))
    (assert-false (lt 1 1))
    (assert-true  (lt 0 1))
    (assert-true  (lt 90 100))
  )
)

(run-test '(lt))
