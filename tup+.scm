(load "add1-sub1")

; Little Schmer p. 69.
(define tup+
  (lambda (tup1 tup2)
    (cond
      ((and (null? tup1) (null? tup2))
        ()
      )
      (else
        (cons (+ (car tup1) (car tup2)) (tup+ (cdr tup1)(cdr tup2)))
      )
    )
))
