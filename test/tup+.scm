(set! load/suppress-loading-message? #t)

(load "tup+")

(load "vendor/test-manager/load")

(in-test-group tup+
  (define-each-test
    (assert-equal () (tup+ () ())  "empty list")
    (assert-equal '(0) (tup+ '(0) '(0))  "two one element zero lists")
    (assert-equal '(1) (tup+ '(0) '(1))  "one element 0 + 1")
    (assert-equal '(9 9 9 9 9) (tup+ '(0 1 2 3 4) '(9 8 7 6 5))  "longer tuples")
  )
)

(run-test '(tup+))
