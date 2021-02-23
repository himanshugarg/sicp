(define (sqrt-iter guess x good-enough-test? improve-fn)
  (if (good-enough-test? guess x improve-fn)
      guess
      (sqrt-iter (improve-fn guess x)
		 x good-enough-test? improve-fn)))

(define (abs x)
  (if (> x 0) x (* -1 x)))

(define (average a b)
  (/ (+ a b) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (improve-alt y x)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (good-enough? guess x improve-fn)
  (< (abs (- (square guess) x)) 0.001))

(define (good-enough-alt? guess x improve-fn)
  (< (abs (- (improve-fn guess x) guess)) 0.0001))

(define (sqrt x good-enough-test? improve-fn)
  (sqrt-iter 1.0 x good-enough-test? improve-fn))

(sqrt 2 good-enough? improve)

(sqrt 2 good-enough-alt? improve)

(sqrt 10000000000 good-enough? improve)

(sqrt 10000000000 good-enough-alt? improve)

(sqrt 0.001 good-enough? improve)

(sqrt 0.001 good-enough-alt? improve)

(define (cuberoot x)
  (sqrt x good-enough-alt? improve-alt))

(cuberoot 8)
