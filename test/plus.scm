(set! load/suppress-loading-message? #t)

(load "plus")

(load "vendor/test-manager/load")

(in-test-group
  plus-and-friends

  (define-test (add1)
    (assert-= 1 (add1 0) "0++")
  )

  (define-test (sub1)
    (assert-= -1 (sub1 0) "0--")
  )

  (define-each-test
    (assert-= 2 (plus 1 1)  "1 + 1")
    (assert-= 1 (plus 1 0)  "1 + 0")
    (assert-= 6 (plus 1 5)  "1 + 5")
    (assert-= 200 (plus 100 100)  "100 + 100")
    ; TODO: make this work
    ;(check (= 0 (plus 1 -1))  "1 + -1")
  )
)

(run-test '(plus-and-friends))
