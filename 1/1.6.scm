; Exercise 1.6
;
; Alyssa P. Hacker doesn’t see why if needs to be provided as a special form. 
; “Why can’t I just define it as an ordinary procedure in terms of cond?” she 
; asks. Alyssa’s friend Eva Lu Ator claims this can indeed be done, and she 
; defines a new version of if:
; 
; (define (new-if predicate 
;                 then-clause 
;                 else-clause)
;   (cond (predicate then-clause)
;         (else else-clause)))
; 
; Eva demonstrates the program for Alyssa:
; 
; (new-if (= 2 3) 0 5)
; 5
; 
; (new-if (= 1 1) 0 5)
; 0
; 
; Delighted, Alyssa uses new-if to rewrite the square-root program:
; 
; (define (sqrt-iter guess x)
;   (new-if (good-enough? guess x)
;           guess
;           (sqrt-iter (improve guess x) x)))
; 
; What happens when Alyssa attempts to use this to compute square roots? Explain.
; 
; ==============================================================================

; This new-if procedure is not a special form but rather a procedure call, and 
; therefore all of the arguments will be evaluated first before they are passed 
; to `cond`. This means that the predicate is ignored and the new `sqrt-iter` 
; procedure will call itself recursively forever.