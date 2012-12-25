module Main where
	getColors :: [String] -> [(String, String)]
	getColors colors = [(a, b) | a <- colors, b <- colors]
