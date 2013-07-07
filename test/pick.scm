(set! load/suppress-loading-message? #t)

(load "pick")

(load "vendor/test-manager/load")

(in-test-group pick
  (define-each-test
    (assert-equal 'a (pick 1 '(a)))
    (assert-equal 'b (pick 2 '(a b)))
    (assert-equal 'd (pick 4 '(a b c d e f g)))
  )
)

(run-test '(pick))
