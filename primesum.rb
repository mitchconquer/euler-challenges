# Find sum of primes < user given number

def next_prime(number)
	candidate_number = number + 1
	if (2..(candidate_number/2)).all?{ |x| candidate_number % x != 0 }
		return candidate_number
	else
		candidate_number += 1
	end
	# (2..(candidate_number / 2)).all?{ |x| candidate_number % x != 0 } ? return candidate_number : candidate_number += 1 # More dense but less readable
end

def sum(primes)
	primes.inject(0){ |sum, x| sum += x }
end

def get_primes(max)
	primes = []
	current_prime = 1

	while current_prime < max
		primes << current_prime
		#puts "Added #{current_prime}"
		current_prime = next_prime(current_prime)
	end
	return primes
end

puts "Find sum of primes below what number?"
max = gets.chomp.to_i
result = sum(get_primes(max))
puts "Sum of all primes below #{max} is #{result}"