(load "deq?")

(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat)(quote ()))
      (else 
        (cond
          ((eq? (car lat) old)
            (cons new (cons old (insertL new old (cdr lat)))))
          (else 
            (cons (car lat)(insertL new old (cdr lat)))))))))

(write "the empty list")
(deq? () (insertL 'a 'b ()))

(write "should produce '(a b c)")
(deq? '(a b c) (insertL 'a 'b '(b c)))

(write "should produce '(cat dog cat dog cat dog)")
(deq? '(cat dog cat dog cat dog) (insertL 'cat 'dog '(dog dog dog)))
