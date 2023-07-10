#lang racket

(require "1.6.rkt")

;; 1. Small numbers (less than 0.001) result in guesses that are never good enough.
;; 2. Large numbers will blow up the squaring inside the test.

(define (improve guess x)
  (average guess (/ x guess)))

;; Works better as delta scales (so for big numbers). Relative accuracy goes down the other way.
(define (good-enough? guess last-guess)
  (define delta (- guess last-guess))
  (< (abs (/ delta guess)) 0.001))

(define (sqrt-iter-rec guess last-guess x)
  (if (good-enough? guess last-guess)
      guess
      (sqrt-iter-rec (improve guess x) guess x)))

(define (sqrt-iter guess x)
  (sqrt-iter-rec guess x x))

(real->decimal-string (sqrt-iter 1 4))