(load "deq?")

(define subst
  (lambda (new old lat)
    (cond
      ((null? lat)(quote ()))
      (else
        (cond
          ((eq? (car lat) old)
           (cons new (subst new old (cdr lat))))
          (else
            (cons (car lat)(subst new old (cdr lat)))))))))

(write "the empty list")
(deq? () (subst 'a 'b ()))

(write "should produce '(a b c)")
(deq? '(a b c) (subst 'a 'z '(z b c)))

(write "should produce '(cat cat cat)")
(deq? '(cat cat cat) (subst 'cat 'dog '(dog dog dog)))
