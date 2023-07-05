#lang sicp

; Exercise 1.3
; Define a procedure that takes three numbers as arguments and
; returns the sum of the squares of the two larger numbers.


(define (square x)
  (* x x))

(define (square-sum-larger a b c)
      (cond ((and (> a b) (> b c))
              (+ (square a) (square b)))
            ((and (> b a) (> c a))
              (+ (square b) (square c)))
            ((and (> a b) (> c b))
              (+ (square a) (square c)))))

(square-sum-larger 4 5 6)
; square sum of 5 and 6 is 61
