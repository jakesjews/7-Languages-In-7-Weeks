module Main where

	data Suit = Spades | Hearts
	data Rank = Ten | Jack | Queen | King | Ace
	type Card = (Rank, Suit)
	type Hand = [Card]

	value :: Rank -> Integer
	value Ten = 1
	value Jack = 2
	value Queen = 3
	value King = 4
	value Ace = 5

	cardValue :: Card -> Integer
	cardValue (rank, suit) = value rank