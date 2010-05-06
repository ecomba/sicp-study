(load "chapter01/ex1.3.scm")

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

