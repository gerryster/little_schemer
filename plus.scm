(load "vendor/test-manager/load")

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))


(define plus
  (lambda (a b)
    (cond
      ((zero? b) a)
      (else (plus (add1 a) (sub1 b)))
    )
))

(in-test-group
  plus-and-friends

  (define-test (add1)
    (check (= 1 (add1 0))  "0++")
  )

  (define-test (sub1)
    (check (= -1 (sub1 0))  "0--")
  )

  (define-test (plus)
    (check (= 2 (plus 1 1))  "1 + 1")
    (check (= 1 (plus 1 0))  "1 + 0")
    (check (= 6 (plus 1 5))  "1 + 5")
    (check (= 200 (plus 100 100))  "100 + 100")
    ; TODO: make this work
    ;(check (= 0 (plus 1 -1))  "1 + -1")
  )
)

(run-test '(plus-and-friends))
