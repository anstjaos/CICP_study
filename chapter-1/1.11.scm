#lang racket

(define (recursive n)
  (cond ((< n 3) n)
    (else (+ (recursive (- n 1))
            (* 2 (recursive (- n 2)))
            (* 3 (recursive (- n 3)))
            )
      )
    )
  )

(recursive 10)

(define (fi n)
  (fi-iter 0 1 2 n))

(define (fi-iter a b c count)
  (if (zero? count)
    a
    (fi-iter b
      c
      (+ c (* 2 b) (* 3 a))
      (- count 1)))
  )

(fi 10)