(load "add1-sub1")

; Little Schemer, p. 77, one-based remove element at.
(define rempick
  (lambda (n lat)
    (cond
      ((= 1 n) (cdr lat))
      (else (cons (car lat) (rempick (sub1 n) (cdr lat))))
    )
))
