#lang racket

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y)
  )

(test 0 (p))

; scheme은 인자 먼저 계산법을 따르기 때문에 (p)가 무한 재귀로 호출돼서 프로그램이 먹통됨