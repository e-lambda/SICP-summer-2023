#lang sicp

; Exercise 1.5:
;
; Ben Bitdiddle has invented a test to determine whether the interpreter he
; is faced with is using applicative-order evaluation or normal-order evaluation.
; He defines the following two procedures:
;
; (define (p) (p))
;
; (define (test x y) 
;   (if (= x 0) 
;       0 
;       y))
;
; Then he evaluates the expression:
;
; (test 0 (p))  
;
; What behavior will Ben observe with an interpreter that uses applicative-order evaluation?
; What behavior will he observe with an interpreter that uses normal-order evaluation?
; Explain your answer. (Assume that the evaluation rule for the special form (if) is the same whether
;                       the interpreter is using normal or applicative order: The predicate expression is evaluated first,
;                       and the result determines whether to evaluate the consequent or the alternative expression.



;;; --------------------------ANSWER:--------------------------------


; Given an interpreter using applicative-order eval, The expression will cause and infinite loop.
; This behavior is due to the fact that arguments will be evaluated before the procedure is ran.
; This means procedure (p) is ran which kicks off the loop.

; Given an interpreter using normal-order eval, This expression will return 0.
; This completes without issue because the argument are not evaluated before procedure call,
; but evaluation is delayed until the value is needed. This means procedure (p) is never actually,
; called due to the if statement in (test). Given any value for x other than 0, this mode will also infinite loop.