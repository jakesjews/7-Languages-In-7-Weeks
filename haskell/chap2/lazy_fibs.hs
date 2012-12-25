module Main where
	lazyFib x y = x:lazyFib y (x + y)
	fib = lazyFib 1 1
	fibNth x = take x fib !! (x - 1) 