module Main where
	allEven1 :: [Integer] -> [Integer]
	allEven1 [] = []
	allEven1 (h:t) = if (h `mod` 2) == 0 then h:allEven1 t else allEven1 t

	allEven2 :: [Integer] -> [Integer]
	allEven2 (list) = filter even list

	allEven3 :: [Integer] -> [Integer]
	allEven3 (list) = [ x | x <- list, even x]
