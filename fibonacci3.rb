# Sum of even numbers in fibonacci sequence up to 4,000,000

max = 4000000

def fibonacci_to(max)
	fibonacci = [1]
	previous = 1
	current = 2
	while next_fibonacci(previous, current) < max
		#fibonacci.push next_fibonacci(previous, current)
		current = next_fibonacci(previous, current)
		fibonacci.push current
		previous = fibonacci.last
	end
	fibonacci
end

def next_fibonacci(previous, current)
	previous + current
end

def sum_of_evens(fibonacci_sequence)
	fibonacci_sequence.inject(0){ |sum, x| x.even? ? sum + x : sum }
end

puts "Sum of even numbers of fibonacci sequence up to #{max} is #{sum_of_evens(fibonacci_to(max))}"

