(load "deq?")

(define multirember
  (lambda (a lat)
    (cond
      ((null? lat)(quote ()))
      (else
        (cond
          ((eq? (car lat) a)
           (multirember a (cdr lat)))
          (else
            (cons (car lat)(multirember a (cdr lat)))))))))

(write "the empty list")
(deq? () (multirember 'a ()))

(write "should produce '(a b c)")
(deq? '(a b c) (multirember 'z '(z a b c)))

(write "should produce '(cat cat cat)")
(deq? '(cat cat cat) (multirember 'dog '(cat dog cat dog dog cat)))

(write "it removes all occurrences")
(deq? () (multirember 'z '(z z z)))
