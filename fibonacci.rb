def next_fibonacci(args)
	previous_number = args['previous_number']
	current_number = args['current_number']
	previous_number + current_number # Return the sum of the previous and current numbers to get the next number in the fibonacci sequence
end

def sum_of_evens(fibonacci_sequence)
	sum = fibonacci_sequence.inject(0){ |sum, x| x.even? ? sum + x : sum } # Add the array value to sum if it is even, else return sum for the next pass of the inject code block
end

def fibonacci_up_to(max)
	fibonacci_sequence = [1]
	previous_number = 1
	current_number = 2
	while current_number < max
		fibonacci_sequence << current_number
		args = {'previous_number' => previous_number, 'current_number' => current_number}
		previous_number = current_number
		current_number = next_fibonacci(args)
	end
	return fibonacci_sequence
end

puts "What's the max number?"
max = gets.chomp.to_i
fibonacci = fibonacci_up_to(max)
print "The sum of the events of the fibonacci numbers up to #{max} is: "
puts "#{sum_of_evens(fibonacci)}"
