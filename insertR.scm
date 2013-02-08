(define insertR
  (lambda (new old lat)
    (cond
      ((null? lat)(quote ()))
      (else 
        (cond
          ((eq? (car lat) old)
            (cons old(cons new (insertR new old (cdr lat)))))
          ; The following is The Little Schemer version.  I used the above to
          ; insert the new element to the right of ALL occurrences of old.
          ;((eq? (car lat) old)
          ;  (cons old(cons new (cdr lat))))
          (else 
            (cons (car lat)(insertR new old (cdr lat))))))))))

(write "the empty list")
(write (insertR 'a 'b ())))

(write "should produce '(a b c)")
(write (insertR 'b 'a '(a c))))

(write "should produce '(cat dog cat dog cat dog)")
(write (insertR 'dog 'cat '(cat cat cat)))
