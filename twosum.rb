# Excerise in prep for Code Academy second coding test
# Method to check if an array has a pair of numbers that sum to zero

class Array
	def sum_is_zero
		output = []
		indices = []

		self.each_with_index do | value1, index1 |
			self.each_with_index do |value2, index2 |
				if index1 != index2 && (value1 + value2 == 0) && !indices.include?([index1, index2]) && !indices.include?([index2, index1])
					output.push [value1, value2]
					indices.push [index1, index2]
				end
			end
		end
		output
	end
end

my_array = [4, 1, 6, -4, -3, 7, 9, -1, 34, -6, -25]

puts my_array.sum_is_zero