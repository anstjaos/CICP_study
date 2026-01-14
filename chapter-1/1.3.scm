#lang racket

(define (func a b c)
  (cond ((and (> a c) (> b c)) (* a b))
    ((and (> b a) (> c a)) (* b c))
    ((and (> a b) (> c b)) (* a c))
    )
  )

(func 3 4 5)
(func 3 5 4)
(func 4 5 3)