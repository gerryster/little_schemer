(set! load/suppress-loading-message? #t)

(load "no-nums")

(load "vendor/test-manager/load")

(in-test-group no-nums
  (define-each-test
    (assert-equal ()   (no-nums ()))
    (assert-equal '(a) (no-nums '(a)))
    (assert-equal '(a) (no-nums '(a 1)))
    (assert-equal '(a) (no-nums '(1 a)))
    (assert-equal '(a b c) (no-nums '(1 a 2 b 3 c)))
  )
)

(run-test '(no-nums))
