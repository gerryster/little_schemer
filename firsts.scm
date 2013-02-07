(define firsts
  (lambda (list)
    (cond
      ((null? list)(quote ()))
      (else (cons (car (car list))
                  (firsts (cdr list)))))))

(write "the empty list")
(write (firsts ()))

(write "three element list")
(write (firsts (quote ((a b) (c d) (e f)))))
  