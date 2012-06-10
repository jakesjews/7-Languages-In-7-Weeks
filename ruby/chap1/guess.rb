number = rand(11)

puts 'Guess a number between 1 and 10'

while (guess = gets.to_i) != number

	puts (guess > number) ? 'lower' : 'higher'

end

puts 'You are correct'