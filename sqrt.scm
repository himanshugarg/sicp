(define (sqrt-iter guess x good-enough-test?)
  (if (good-enough-test? guess x)
      guess
      (sqrt-iter (improve guess x)
		 x good-enough-test?)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (abs x)
  (if (> x 0) x (* -1 x)))

(define (average a b)
  (/ (+ a b) 2))

(define (good-enough-alt? guess x)
  (< (abs (- (improve guess x) guess)) 0.0001))

(sqrt-iter 1 2 good-enough?)

(sqrt-iter 1 2 good-enough-alt?)

(sqrt-iter 1 1000000 good-enough?)

(sqrt-iter 1 1000000 good-enough-alt?)

(sqrt-iter 1 0.001 good-enough?)

(sqrt-iter 1 0.001 good-enough-alt?)




