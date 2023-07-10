#lang sicp

; Exercise 1.7

; The good-enough? test used in computing square roots will not be very effective
; for finding the square roots of very small numbers. Also, in real computers, arithmetic
; operations are almost always performed with limited precision. This makes our test
; inadequate for very large numbers. Explain these statements, with examples showing
; how the test fails for small and large numbers.

; An alternative strategy for implementing good-enough? is to watch how guess changes
; from one iteration to the next and to stop when the change is a very small fraction of the
; guess. Design a square-root procedure that uses this kind of end test. Does this work
; better for small and large numbers?

(define (square x)
  (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.001))



(sqrt-iter 1.0 0.0005)
(sqrt-iter 1.0 1234567890123)
(sqrt-iter 1.0 12345678901234)

; Returns 0.036 as the answer when the real answer is 0.022
; Since the good enough function only check to see wether the
; sq root is within 0.001 of the answer, for very small numbers
; this method is not efficient for calculating the root

; if we try to find the square root of 1234567890123 using the
; good-enough? test with a tolerance of 0.001, the guess will
; eventually be rejected, even if it is very close to the actual square root.


; The alternate strat fixes these issues
