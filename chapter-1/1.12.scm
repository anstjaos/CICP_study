#lang racket

(define (pascal n)
  (for ([x (in-range 0 n)])
    (for ([y (in-range 0 (+ x 1))])
      (printf "~a " (pascal-recursive x y)))
    (newline))
  )

(define (pascal-recursive x y)
  (cond ((= y 0) 1)
    ((= x 0) 1)
    ((= y x) 1)
    (else (+ (pascal-recursive (- x 1) (- y 1))
            (pascal-recursive (- x 1) y))
      )
    )
  )

(pascal 5)