; Little Schemer, p. 77, remove all non-numbers from the list.
(define no-nums
  (lambda (lat)
    (cond
      ((null? lat) ())
      ((number? (car lat)) (no-nums (cdr lat)))
      (else (cons (car lat) (no-nums (cdr lat))))
    )
))
