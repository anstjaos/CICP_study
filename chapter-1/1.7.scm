#lang racket

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
      x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; (sqrt 0.000000002) => 작은 수 일 경우 good-enough가 항상 true를 리턴해서 올바른 값이 나오지 않음
; (sqrt 21234561233456789) => 큰 수에서 good-enough의 0.001 비교하는 값이 너무 작아 true가 절대 나오지 않기 때문에 계속 무한 루프 발생

(define (new-sqrt x)
  (new-sqrt-iter 1.0 0 x))

(define (new-sqrt-iter guess last-guess x)
  (if (new-good-enough? guess last-guess)
    guess
    (new-sqrt-iter (improve guess x)
                 guess
                 x)))

(define (new-good-enough? guess last-guess)
  (< (abs (- guess last-guess)) 0.001))

(new-sqrt 21234561233456789)