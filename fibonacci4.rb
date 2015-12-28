# Find sum of even fibonacci numbers whose value doesn't exceed the maximum (4,000,000)

# Set our variables for intial use
max = 4_000_000
x = 1
y = 2
sum = 0

# Keep generating and adding even Fibonacci numbers to the total until they are greater than the max
until y >= max - 1
	sum += y if y.even?
	y = y + x
	x = y - x
end

# Print out the result
puts 'The sum of even fibonacci numbers up to ' + max.to_s + ' is ' + sum.to_s