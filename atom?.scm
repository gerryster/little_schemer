(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))  

;(write "1 is an atom")
;(atom? 1)

;(write "'a is an atom")
;(atom? 'a)

;(write "'() is not an atom")
;(eq? #f (atom? '()))
