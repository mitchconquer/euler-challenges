which_prime = 10001

def next_prime(current_prime)
	number = current_prime
	prime = false
	while prime == false
		prime = true
		number += 1
		(2..(number-1)).each do |x| # Check if the number is divisble by any number other than 1 and itself
			if number % x == 0
				prime = false
				break
			end
		end
	end
	number
end

def gather_primes(which_prime)
	primes = [1]
	while primes.length < which_prime
		primes << next_prime(primes.last)
	end
	primes
end

def get_that_prime(which_prime)
	primes = gather_primes(which_prime)
	primes[which_prime-1]
end

puts "The \##{which_prime} is #{get_that_prime(which_prime)}"