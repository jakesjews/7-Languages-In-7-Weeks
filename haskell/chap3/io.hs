module Main where
	tryIo :: IO String 
	tryIo = do putStr "Enter your name: " ;
			   line <- getLine ;
			   let { backwards = reverse line } ;
			   return ( "Hello. Your name backwards is " ++ backwards )