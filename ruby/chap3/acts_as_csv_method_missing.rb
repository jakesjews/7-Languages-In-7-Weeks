class CsvRow
	
	def initialize(row)
		@data = row
  end

	def method_missing name, *args
		column = name.to_s

		column.gsub!("one", "1")
		column.gsub!("two", "2")
		column.gsub!("three", "3")
		column.gsub!("four", "4")
		column.gsub!("five", "5")
		column.gsub!("six", "6")
		column.gsub!("seven", "7")
		column.gsub!("seven", "7")
		column.gsub!("nine", "9")
		column.gsub!("ten", "10")

		@data[column.to_i - 1]
	end
end

class ActsAsCsv
	def read
    file_name = "/#{self.class.to_s.downcase}.txt"
		file = File.new(File.dirname($0) + file_name)
		@headers = file.gets.chomp.split(', ')

		file.each do |row|
			@rows << CsvRow.new(row.chomp.split(', '))
		end
	end

	def headers
		@headers
	end

	def csv_contents
		@result
	end

	def initialize
		@rows = []
		read
	end

	def each(&blk)
		@rows.each(&blk)
	end

end

class RubyCsv < ActsAsCsv
end

csv = RubyCsv.new
csv.each {|row| puts row.one}