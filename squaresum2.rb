# Find difference of square of sums and sum of squares of first 100 natural numbers

def sum_of_squares(num)
	sum = 0

	(1..num).each do |i|
		sum += i**2
	end

	return sum
end

def square_of_sum(num)
	sum = 0

	(1..num).each do |i|
		sum += i
	end

	return sum ** 2
end

number = 100
puts square_of_sum(number) - sum_of_squares(number)