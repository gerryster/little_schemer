(set! load/suppress-loading-message? #t)

(load "occur")

(load "vendor/test-manager/load")

(in-test-group occur
  (define-each-test
    (assert-equal 0 (occur 'a ()))
    (assert-equal 1 (occur 'a '(a)))
    (assert-equal 2 (occur 'a '(a a)))
    (assert-equal 2 (occur 'a '(b a a 1)))
    (assert-equal 1 (occur 1 '(b a a 1)))
  )
)

(run-test '(occur))
