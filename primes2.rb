# Find 10001st prime

def next_prime(last_prime)
	current_number = last_prime
	loop do
		current_number += 2 # Adding two because primes can't be even, last prime must be odd also
		if ((2..(current_number-1)).all?{ |x| current_number % x != 0}) # Will only return true if it evaluates to true every time
			return current_number
		end
	end
end

def get_primes(max)
	primes = [1]
	while primes.length != max do
		primes << next_prime(primes.last)
	end
	primes.last
end

puts "Which prime do you want to get?"
max = gets.chomp.to_i
prime = get_primes(max)
puts "The \##{max} prime is #{prime}"
