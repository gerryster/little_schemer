(set! load/suppress-loading-message? #t)

(load "gt")

(load "vendor/test-manager/load")

(in-test-group gt
  (define-each-test
    (assert-true  (gt 1 0))
    (assert-false (gt 1 1))
    (assert-false (gt 0 1))
    (assert-true  (gt 100 99))
  )
)

(run-test '(gt))
