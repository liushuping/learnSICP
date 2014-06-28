#lang scheme

(define (max3 x y z)
  (cond ((and (<= x y) (<= x z)) (+ y z))
        ((and (<= y z) (<= y x)) (+ x z))
        ((and (<= z x) (<= x y)) (+ x y))))

(max3 1 4 7)
(max3 3 6 2)
