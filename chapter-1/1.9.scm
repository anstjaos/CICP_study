#lang racket

(define (plus a b)
  (if (= a 0)
    b
    (inc (plus (dec a) b))))

(define (inc a)
  (+ a 1))

(define (dec a)
  (- a 1))

(plus 4 5)

; (plus 4 5)
; (inc (plus (dec 4) 5))
; (inc (plus 3 5))
; (inc (inc (plus (des 3) 5)))
; (inc (inc (plus 2 5)))
; (inc (inc (inc (plus (dec 2) 5))))
; (inc (inc (inc (plus 1 5))))
; (inc (inc (inc (inc (plus (dec 1) 5)))))
; (inc (inc (inc (inc (plus 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9

(define (plus2 a b)
  (if (= a 0)
    b
    (plus2 (dec a) (inc b))))

; (plus2 4 5)
; (plus2 (dec 4) (inc 5))
; (plus2 3 6)
; (plus2 (dec 3) (inc 6))
; (plus2 2 7)
; (plus2 (dec 2) (inc 7))
; (plus2 1 8)
; (plus2 (dec 1) (inc 8))
; (plus2 0 9)
; 9