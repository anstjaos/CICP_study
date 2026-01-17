#lang racket

(define (triple-sqrt-iter guess last-guess x)
  (if (good-enough? guess last-guess)
    guess
    (triple-sqrt-iter (improve guess x)
      guess
      x)))

(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess)) 0.00001))

(define (improve guess x)
  (triple-average (/ x (square guess)) (* 2 guess)))

(define (square x)
  (* x x))

(define (triple-average x y)
  (/ (+ x y) 3))

(define (triple-sqrt x)
  (triple-sqrt-iter 1.0 0 x))

(triple-sqrt 13123123)