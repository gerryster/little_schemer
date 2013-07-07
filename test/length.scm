(set! load/suppress-loading-message? #t)

(load "length")

(load "vendor/test-manager/load")

(in-test-group length
  (define-each-test
    (assert-= 0 (length ()))
    (assert-= 1 (length '(a)))
    (assert-= 2 (length '(a b)))
    (assert-= 7 (length '(a b c d e f g)))
  )
)

(run-test '(length))
