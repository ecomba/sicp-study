; Part 1:
;
; The good-enough? test used in computing square roots will not be very effective for finding
; the square roots of very small numbers. Also, in real computers, arithmetic operations
; are almost always performed with limited precision. This makes out test inadequate for
; very large numbers. Explain these statements, with examples showing how the test fails
; for small and large numbers.
;
; Answer:
;
; When the number is smaller than the predetermined tolerance the sqrt cannot be computed
; for that number.
;
;
; Part 2:
;
; An alternative strategy for implementing good-enough? is to watch how guess changes from
; one iteration to the next and to stop when the change is a very small fraction of the 
; guess.
;
; Design a square-root procedure that uses this kind of end test.
;
; Answer:
(load "chapter01/newton.scm")
(define (good-enough? old-guess guess x)
  (< (abs (- guess old-guess)) (* guess 0.000001)))

(define (sqrt-iter old-guess guess x)
  (if (good-enough? old-guess guess x)
    guess
    (sqrt-iter guess (improve guess x) x)))
(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))

; Does this work better for small and large numbers?
