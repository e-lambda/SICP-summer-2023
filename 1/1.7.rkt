#lang racket

;; Small numbers (less than 0.001) result in guesses that are never good enough.
;; Large numbers will blow up the squaring inside the test.

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(real->decimal-string (cbrt-iter 1 8))