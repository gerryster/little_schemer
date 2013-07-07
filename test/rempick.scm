(set! load/suppress-loading-message? #t)

(load "rempick")

(load "vendor/test-manager/load")

(in-test-group rempick
  (define-each-test
    (assert-equal ()   (rempick 1 '(a)))
    (assert-equal '(a) (rempick 2 '(a b)))
    (assert-equal '(a b c e f g) (rempick 4 '(a b c d e f g)))
  )
)

(run-test '(rempick))
