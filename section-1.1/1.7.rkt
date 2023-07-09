#lang sicp

; Exercise 1.7:

; The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers.
; Also, in real computers, arithmetic operations are almost always performed with limited precision. This makes our test inadequate for very large numbers.
; Explain these statements, with examples showing how the test fails for small and large numbers.
; An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next and to stop when the change is a very small fraction of the guess.
; Design a square-root procedure that uses this kind of end test. Does this work better for small and large numbers?
;
; 
; Code that was written throughout this chapter
(define (square x) (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (cond ((good-enough? guess x)
      guess)
      (else (sqrt-iter (improve guess x) x))))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(sqrt 0.00000000123456) ; hugely wrong answer
; (sqrt 19829481294898) infinite loop



;;; --------------------------ANSWER:--------------------------------

; SMALL NUMBER ISSUE:
;
; The test being used in the original (good-enough?) uses a rather large precision check value.
;
; This will cause small numbers below it to be unable to reliably get close to the true square root value before passing the check and returning.
;
; Simply lowering the precesion check works to solve the issue with very small numbers.


; LARGE NUMBER ISSUE:
;
; The problem with large numbers is different and is being caused by the computer implementation of floating point.
;
; When most large numbers get to the point where they can no longer improve(they've reached the answer),
; they are not able to pass the original (good-enough?) check because the difference between the answer and x is larger than the precision.
;
; Changing the precision is not enough to fix this, as this will continue to be an issue for many numbers at any precision due to floating point representation.
;
; The book actually provides the fix for this which is to change the (good-enough?) calculation to stop when the change between guesses is a very small fraction of the guess.
;
; Below is the implementation of these fixes along with examples that failed the original but will pass now.

(define (my-good-enough? prev guess)
  (< (abs (/ (- prev guess) guess)) .00000001))


(define (my-sqrt-iter guess x)
  (cond ((my-good-enough? guess (improve guess x))
      guess)
      (else (my-sqrt-iter (improve guess x) x))))

(define (my-sqrt x)
  (my-sqrt-iter 1.0 x))

(my-sqrt 0.00000000123456)
(my-sqrt 19829481294898)