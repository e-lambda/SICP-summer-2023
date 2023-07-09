#lang sicp

; Exercise 1.6:
;
; Alyssa P. Hacker doesn’t see why if needs to be provided as a special form.
; “Why can’t I just define it as an ordinary procedure in terms of cond?” she asks.
; Alyssa’s friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:
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
;Value: 5
;
; (new-if (= 1 1) 0 5)
;Value: 0
;
; Delighted, Alyssa uses new-if to rewrite the square-root program:
;
;
; (define (sqrt-iter guess x)
;   (new-if (good-enough? guess x)
;            guess
;           (sqrt-iter (improve guess x) x)))

;
; What happens when Alyssa attempts to use this to compute square roots? Explain.

;;; --------------------------ANSWER:--------------------------------

; Infinite loop! How'd that happen??
;
; Well, this bug reveals some perhaps not forseen differences between a user defined procedure and a special case 
; which is built into the interpreter itself.
;
; Recall that the interpeter is using application-order evaluation, which means the arguments of procedures,
; excluding some special cases as this exercise is illustrating, are evaluated before the procedure is called.
;
; This fact is causing (sqrt-iter) to endlessly recurse.