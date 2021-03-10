(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
	 (* 2 (f (- n 2)))
	 (* 3 (f (- n 3)))))))

(define (f2 n)
  (f2-iter 0 1 2 n))

(define (f2-iter a b c n)
  (if (< n 3)
      c
      (f2-iter b
	       c
	       (+ c
		  (* 2 b)
		  (* 3 a))
	       (- n 1))))

(= (f2 1) (f2 1))
(= (f2 2) (f2 2))
(= (f2 3) (f2 3))
(= (f2 4) (f2 4))
(= (f2 5) (f2 5))

