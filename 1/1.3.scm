; Exercise 1.3
; 
; Define a procedure that takes three numbers as arguments and returns the sum 
; of the squares of the two larger numbers.
;
; ==============================================================================
; 
; We have to use the `define` syntax for procedures:
;
; (define (<name> <formal parameters>) <body>)

; Defined in section 1.1.4:
(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-of-two-largest x y z)
  (cond ((and (>= y x) (>= z x)) (sum-of-squares y z))
	((and (>= x y) (>= z y)) (sum-of-squares x z))
	((and (>= x z) (>= y z)) (sum-of-squares x y))))