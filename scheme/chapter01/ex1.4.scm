; Observe that our model of evaluation allows for combinations whose operators
; are compound expressions. Use this to describe the behaviour of the
; following procedure:
;
; (define (a-plus-abs-b a b)
;   ((if (> b 0) + -) a b))

; Observation:
;
; When this procedure is executed it will check if b is greater than 0 (> b 0)
; if b is greater than 0 it will use the + operator, otherwise the - operator
; (if (>b 0) + -) as the parameter to use.
; So when called it will decide which operation to execute (i.e. which operator
; to use) to either add or substract a and b.
;
; Examples:
;
; (a-plus-abs-b 2 2) => ;Value: 4
; (a-plus-abs-b -2 2) => ;Value: 0
