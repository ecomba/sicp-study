; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the two larger numbers.
;
;
; Actual code here
;
(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (larger x y)
  (if (> x y) x y))

(define (smaller x y)
  (if (< x y) x y))

(define (sum-of-larger-squares x y z) 
  (sum-of-squares (larger x y) (larger (smaller x y) z)))

