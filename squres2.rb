# Find difference between square of sum and sum of squres of given number

def sum_of_squares(max)
	sum = (1..max).inject(0){ |sum, x| sum += x ** 2 }
end

def square_of_sum(max)
	square = ((1..max).inject(0){ |sum, x| sum + x }) ** 2
end

def difference(max)
	square_of_sum(max) - sum_of_squares(max)
end

puts "What's the number you'd like to find the difference between the square of the sums and sum of the squares of?"
max = gets.chomp.to_i
puts "The result is #{difference(max)}"