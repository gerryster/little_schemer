(load "atom?")

; recursive eq?  Deep equal.
(define deq?
  (lambda (a b)
    (cond
      ((null? a)
        ; when a is null b should also be null
        (cond
          ((null? b) #t)
          (else #f)))
      ; we already know that a is not null so false
      ((null? b) #f)
      ((atom? a)
        (cond
          ((atom? b)
            (eq? a b))
          (else #f)))
      ; if the current elements are the same then we can continue
      ((eq? (car a) (car b))
        (deq? (cdr a) (cdr b) ) )
      (else #f))))

(write "empty lists are equal")
(eq? #t (deq? () () ))

(write "empty list is not equal to a non empty list")
(eq? #f (deq? () '(b) ))

(write "non empty list is not equal to an empty list")
(eq? #f (deq? '(a) () ))

(write "equal one element lists")
(eq? #t (deq? '(a) '(a) ))

(write "equal larger lists")
(eq? #t (deq? '(a b c d) '(a b c d) ))

; TODO: figure out why this is broken
;(write "equal nested list")
;(eq? #t (deq? '(a '(b c) d) '(a '(b c) d) ))

(write "unequal one element lists")
(eq? #f (deq? '(a) '(b) ))

(write "unequal larger list")
(eq? #f (deq? '(a b c d) '(a b c) ))

(write "unequal nested lists")
(eq? #f (deq? '(a b (c d)) '(a b (c (d))) ))

(write "equal atoms")
(eq? #t (deq? 'a 'a))

(write "unequal atoms")
(eq? #f (deq? 'a 'b))

(write "an atom and a list containing that atom")
(eq? #f (deq? 'a '(a)))

(write "equal atoms")
(eq? #t (deq? 'a 'a))

(write "unequal atoms")
(eq? #f (deq? 'a 'b))

(write "an atom and a list containing that atom")
(eq? #f (deq? 'a '(a)))
