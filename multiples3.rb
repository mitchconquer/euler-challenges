def get_natural_numbers(min = 0, max ) 
	return if min > max

	natural_numbers = []

	(min..max - 1).each do |i|
		if (i % 3 == 0)
			natural_numbers.push i
		elsif (i % 5 == 0)
			natural_numbers.push i
		end
	end
	
	natural_numbers
end

def total(numbers)
	numbers.inject(0) { |sum, x| sum + x }
end

min = 0
max = 1000

numbers = total(get_natural_numbers(max))
puts numbers

sum = 0
max = 1000

(0..max - 1).each { |i| sum += i if (i % 3 == 0 || i % 5 == 0) }

puts sum