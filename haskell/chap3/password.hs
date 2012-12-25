module Main where
	crack = do x <- ['a'..'c'] ; y <- ['a'..'c'] ; z <- ['a'..'c'] ;
				let { password = [x, y, z] } ;
				return
					(if attempt password then (password, True) else (password, False))

	attempt pw = pw == "cab" 