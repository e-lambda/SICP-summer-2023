; Exercise 1.7
; 
; The good-enough? test used in computing square roots will not be very effective
; for finding the square roots of very small numbers. Also, in real computers, 
; arithmetic operations are almost always performed with limited precision. This
; makes our test inadequate for very large numbers. Explain these statements, 
; with examples showing how the test fails for small and large numbers.

; An alternative strategy for implementing good-enough? is to watch how guess 
; changes from one iteration to the next and to stop when the change is a very 
; small fraction of the guess. Design a square-root procedure that uses this kind
; of end test. Does this work better for small and large numbers?
; 
; ==============================================================================

; "Limited precision" in this context means that we are using a finite amount of 
; bits to represent a real number with a potentially infinite decimal 
; representation. IEEE floating point arithmetic is defined as real-number 
; arithmetic truncated to the closest representable float, introducing errors in 
; calculations.

(define (square x) (* x x))

(define (average x y)
    (/ (+ x y) 2))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define epsilon 1e-10)
(define (good-enough? guess x)
    (< (abs (- guess (improve guess x)))
        (* guess epsilon)))

(define (sqrt x)
    (sqrt-iter 1.0 x))