# App Academy Second Coding Challenge Practice
# Enumerable Exercises

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def times_two array
	array.map do | i |
		i * 2
	end
end

def concatenate array
	array.inject('') do | sum, x |
		sum + x
	end
end

def find_median array
	input = array.sort
	middle = array.count / 2
	median = nil
	if input.count.even?
		median = (input[middle] + input[middle + 1]) / 2.0
	else
		median = input[middle]
	end
	median
end

puts 'Times Two'
puts times_two my_array
puts ''
puts 'Concatenate Strings'
my_strings = ['Yay ', 'for ', 'stings!']
puts concatenate my_strings
puts ''
puts 'Find median'
array1 = [1, 2, 3, 4, 5, 2, 4]
puts array1
puts ''
puts find_median array1
array2 = [44, 2, 90, 2,1, 5, 89, 8]
puts array2
puts ''
puts find_median array2



