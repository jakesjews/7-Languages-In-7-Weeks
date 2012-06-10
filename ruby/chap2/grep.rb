File.open(ARGV[0]).each_line.with_index(1) do |line, i|

	puts "#{i}: #{line}" if line.include? ARGV[1] 

end
