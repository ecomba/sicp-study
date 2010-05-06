(ns sicp_test
  (:use sum_of_squares clojure.contrib.test-is))

(deftest square-test
         (is (= 4 (square 2)))
         (is (= 9 (square 3)))
         )
(deftest larger-test
         (is (= 4 (larger 3 4)))
         (is (= 9 (larger 9 4)))
         )
(deftest smaller-test
         (is (= 3 (smaller 3 4)))
         (is (= 4 (smaller 9 4)))
         )
(deftest sum-of-squares-test
         (is (= 8 (sum-of-squares 2 2)))
         (is (= 13 (sum-of-squares 2 3)))
         )
(deftest sum-of-larger-squares-test
         (is (= 13 (sum-of-larger-squares 1 2 3)))
         (is (= 20 (sum-of-larger-squares 4 2 1)))
         )
(run-tests)
