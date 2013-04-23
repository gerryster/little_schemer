(load "deq?")

(define subst2
  (lambda (new o1 o2 lat)
    (cond
      ((null? lat)(quote ()))
      (else
        (cond
          ((or(eq? (car lat) o1) (eq? (car lat) o2))
           (cons new (subst2 new o1 o2 (cdr lat))))
          (else
            (cons (car lat)(subst2 new o1 o2 (cdr lat)))))))))

(write "the empty list")
(deq? () (subst2 'a 'b 'c ()))

(write "should produce '(a a c)")
(deq? '(a a c) (subst2 'a 'y 'z '(z y c)))

(write "should produce '(cat cat cat)")
(deq? '(cat cat cat) (subst2 'cat 'dog 'mouse '(dog mouse dog)))
