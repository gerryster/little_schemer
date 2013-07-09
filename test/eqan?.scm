(set! load/suppress-loading-message? #t)

(load "eqan?")

(load "vendor/test-manager/load")

(in-test-group eqan?
  (define-each-test
    (assert-true  (eqan? 'a 'a))
    (assert-false (eqan? 'a 'b))
    (assert-true  (eqan? 1 1))
    (assert-false (eqan? 0 1))
    (assert-false (eqan? 0 'a))
  )
)

(run-test '(eqan?))
