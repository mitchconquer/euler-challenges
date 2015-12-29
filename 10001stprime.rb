# Find the 10,001st prime number

# Ruby doesn't seem to like using recursive functions like this if it calls itself too many times :-/
# def is_prime?(number, factor = 2)
# 	return true if number == 2

# 	if factor < number && number % factor == 0
# 		return false

# 	elsif factor < number
# 		factor == 2 ? factor = 3 : factor += 2
# 		return false unless is_prime?(number, factor)

# 	end

# 	return true
# end

def is_prime?(number)
	factor = 2

	until factor > number / 2
		return false if number % factor == 0
		factor == 2 ? factor += 1 : factor += 2
	end

	return true
end


def next_prime(number = 2)
	number += 1

	until is_prime?(number)
		number.even? ? number += 1 : number += 2
	end

	number
end

def get_nth_prime(limit = 10_001)
	primes = [2]
	prime = 2

	until primes.length >= limit
		prime = next_prime(prime)
		primes.push prime
	end

	return primes[limit - 1]
end

def duration
	start_time = Time.now
	yield
	puts 'Operation took ' + (Time.now - start_time).to_s + ' seconds'
end

duration { puts get_nth_prime }
