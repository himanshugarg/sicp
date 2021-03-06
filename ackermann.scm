(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1 )
		 (A x (- y 1))))))

(A 0 10) ; (A 0 n) => 2n

(A 1 10) ; (A 1 n) => 2^10

(A 2 4) ; (A 2 n) => 2^2^2^...^2
