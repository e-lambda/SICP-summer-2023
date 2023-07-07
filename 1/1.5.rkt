#lang racket

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

;; [applicative-order]
;; Never returns; infinite loop eager evaluating (p).

;; [normal-order]
;; Returns 0; only the consequent inside test is evaluated.