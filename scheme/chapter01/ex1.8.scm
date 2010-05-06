; Use Newton's formula to implement a cube-root procedure analogous to the square-root
; procedure.
(load "chapter01/ex1.7.scm")
(define (cube-root x)
  (cube-root-iter 0.0 1.0 x))

(define (cube-root-iter old-guess guess x)
  (if (good-enough? old-guess guess x)
    guess
    (cube-root-iter guess (improve guess x) x)))

(define (square x)
  (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))
