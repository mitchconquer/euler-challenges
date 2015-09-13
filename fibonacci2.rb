# Sum of even fibonacci numbers up to max

def next_fibonacci(args)
	previous_number = args['previous_number']
	current_number = args['current_number']
	previous_number + current_number
end

def fibonacci_up_to(max)
	previous_number = 1
	current_number = 2
	fibonacci = [1]
	while current_number < max
		fibonacci << current_number
		args = {'previous_number' => previous_number, 'current_number' => current_number}
		previous_number = current_number
		current_number = next_fibonacci(args)
	end
	return fibonacci
end

def sum_of_evens(fibonacci)
	fibonacci.inject(0){ |sum, x| x.even? ? sum + x : sum }
end

puts "What's the max number?"
max = gets.chomp.to_i
fibonacci = fibonacci_up_to(max)
sum = sum_of_evens(fibonacci)
puts " The sum of the even fibonacci numbers below #{max} is #{sum}"