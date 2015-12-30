# Find the sum of all primes below 2,000,000

def is_prime?(num)
	factor = 2

	until factor >= num
		return false if num % factor == 0
		factor == 2 ? factor += 1 : factor += 2
	end
	
	return true
end

def next_prime(num)
	num += 1

	until is_prime?(num)
		num.even? ? num += 1 : num += 2
	end

	return num
end

def get_primes_to(num)
	primes = []
	candidate = 1

	until candidate >= num
		candidate = next_prime(candidate)
		primes.push candidate
	end

	return primes.inject(0) { | sum, x | sum + x }
end

def duration
	start = Time.now
	yield
	puts 'Operation took ' + (Time.now - start).to_s + ' seconds'
end

def get_integers(num)
	result = [2]
	current = 3
	until current >= num
		result.push current
		current += 2
	end
	return result
end

# duration {puts get_primes_to(2_000_000)}
def eratosthenes_sieve(num)
	series = get_integers(num)
	puts 'Processing series...'
	factor = 3
	until factor**2 >= num
		series.each do |i|
			if i % factor == 0 && i != factor
				series.delete(i)
			end
			print 'Deleted factors of ' + i.to_s + ' from series.  '
		end
		factor += 2
	end
	return series	
end

maximum_number = 2_000_000

duration do 
	puts get_primes_to(maximum_number)
end

# duration do 
# 	series = eratosthenes_sieve(maximum_number)
# 	puts series.inject(0) { | sum, x | sum + x }
# end




