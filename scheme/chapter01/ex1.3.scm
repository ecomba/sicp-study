; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the two larger numbers.
;
(in-test-group exercise-1-3-larger
  (define-each-test
    (assert-= (larger 1 2) 2)
    (assert-= (larger 38 4) 38)
    ))
(in-test-group exercise-1-3-sum-of-squares
  (define-each-test
    (assert-= (sum-of-squares 2 3) 13)
    ))
(in-test-group exercise-1-3-square
  (define-each-test
    (assert-= (square 2) 4)
    (assert-= (square 5) 25)
    ))
(in-test-group exercise-1-3-smaller
  (define-each-test
    (assert-= (smaller 1 2) 1)
    ))
(in-test-group exercise-1-3-sum-of-larger-squares
  (define-each-test
    (assert-= (sum-of-larger-squares 1 2 3) 13)
    (assert-= (sum-of-larger-squares 4 5 6) 61)
    (assert-= (sum-of-larger-squares 3 2 1) 13)
    (assert-= (sum-of-larger-squares 10 5 4) 125)
    ))
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

