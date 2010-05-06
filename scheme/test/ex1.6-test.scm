(load "chapter01/ex1.6.scm")

(in-test-group exercise-1-6-new-if
  (define-each-test
    (assert-= (new-if (= 2 3) 0 5) 5)
    (assert-= (new-if (= 1 1) 0 5) 0)
    ))
