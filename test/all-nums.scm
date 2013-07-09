(set! load/suppress-loading-message? #t)

(load "all-nums")

(load "vendor/test-manager/load")

(in-test-group all-nums
  (define-each-test
    (assert-equal ()   (all-nums ()))
    (assert-equal '(1) (all-nums '(1)))
    (assert-equal ()   (all-nums '(a)))
    (assert-equal '(1) (all-nums '(a 1)))
    (assert-equal '(1) (all-nums '(1 a)))
    (assert-equal '(1 2 3) (all-nums '(1 a 2 b 3 c)))
  )
)

(run-test '(all-nums))
