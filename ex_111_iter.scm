#lang scheme

(define (f n)
  (define (iter a b c count)
    (if (= count 2)
        c
	(iter b
	      c
	      (+ c
                 (* 2 b)
	         (* 3 a))
	      (- count 1))))

  (iter 0 1 2 n))

(f 3)
(f 2)
(f 5)
