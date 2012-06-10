numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

numbers.each { |num|
	
	print num

	puts if [4, 8, 12].include? num
}

puts

numbers.each_slice(4) { |nums| p nums }