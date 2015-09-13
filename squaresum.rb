max = 100

def square_of_sum(max)
	sum = 0
	(1..max).each do |x|
		sum += x
	end
	sum ** 2
end

def sum_of_squares(max)
	sum = 0 
	(1..max).each do |x|
		sum += x ** 2
	end
	sum
end

def difference(max)
	value_one = sum_of_squares(max)
	value_two = square_of_sum(max)
	(value_two - value_one).abs
end

puts "Sum of Squares of 1 to #{max} is #{sum_of_squares(max)}"
puts "Square of Sums of 1 to #{max} is #{square_of_sum(max)}"
puts "The difference is #{difference(max)}"