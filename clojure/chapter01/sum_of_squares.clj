(ns sum_of_squares)

(defn square [x] (* x x))

(defn sum-of-squares [x y]
  (+ (square x) (square y)))

(defn larger [x y]
  (if (> x y) x y))

(defn sum-of-larger-squares [x y z]
  (sum-of-squares (larger x y)
                  (larger y z)))
