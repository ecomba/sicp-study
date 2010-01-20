; (define (p) (p))
;
; (define (test x y)
;   (if (= x 0)
;     0
;     y))
;
; When evaluating the expression
; 
; (test 0 (p))
;
; What behaviour will Ben observe with an interpreter that uses
; applicative-order evaluation?
;
;   The interpreter will evaluate all expressions in the procedures.
;   This will cause the interpreter to recursively try to evaluate (p)
;   making the iterpreter 'hang' and never get out of the evaluation; not
;   being able to compute the expression (test 0 (p)).
;
; What behaviour will he observe with an interpreter that uses
; normal-order evaluation?
;   The interpreter will only evaluate the expressions when needed. This
;   will cause the following effect:
;
;   (test 0 (p))
;   => (if (= 0 0) 0 (p))
;
;   Because the condition (= 0 0) is met, the interpreter will not
;   evaluate (p) and return 0.
