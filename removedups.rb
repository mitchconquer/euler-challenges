# Excerise in prep for Code Academy second coding test
# Recreate the Array#uniq method
# Return an array that has removed all duplicate values

class Array
	def my_uniq
		output = []

		self.each do |x|
			output.push x unless output.include?(x)
		end

		output
	end
end

my_array = [3, 3, 1, 4, 7, 7, 8]

puts my_array.my_uniq
