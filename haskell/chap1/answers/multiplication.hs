module Main where
	multiplication :: [(Integer, Integer, Integer)]
	multiplication = [(a, b, a * b) | a <- [1..12], b <- [1..12]]