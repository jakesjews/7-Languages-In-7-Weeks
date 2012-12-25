module Main where
	import Data.List

	mysort :: [Integer] -> [Integer]
	mysort [] = []
	mysort (h:t) = sort(filter (<= h) t) ++ [h] ++ sort(filter (> h) t) 

	sortby :: (Ord a) => (a -> a -> Ordering) -> [a] -> [a]
	sortby comparator list = sortBy comparator list

	moneyToNum :: String -> Float
	moneyToNum value = read strippedValue :: Float
		where
			strippedValue =
				foldl
					(\ newString c ->
						if c == '$' || c == ',' then
							newString
						else
							newString ++ [c]
					)
					""
					value

	everyThird x = [x, (x + 3) ..]
	everyFifth y = [y, (y + 5) ..]
	everyEigth x y = zipWith (+) (everyThird x) (everyFifth y)

	halfNum = (/ 2)
	newLine = (++ "\n")