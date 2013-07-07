(load "add1-sub1")

; Little Schemer, p. 76
(define length
  (lambda (lat)
    (cond
      ((null? lat) 0)
      (else (add1 (length (cdr lat))))
    )
))
