; Little Schemer, p. 78, only keep the numbers in the list.
(define all-nums
  (lambda (lat)
    (cond
      ((null? lat) ())
      ((not(number? (car lat))) (all-nums (cdr lat)))
      (else (cons (car lat) (all-nums (cdr lat))))
    )
))
