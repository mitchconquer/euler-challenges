# Find the smallest number evenly divisible by all numbers up to a max

# Return array of prime factors of a number
# ...using recursion!!
def get_primes(number, all_factors = [], divisor = 2)
	
	unless number == 1
		if number % divisor == 0
			all_factors.push divisor
			number = number / divisor
			get_primes(number, all_factors, divisor)
		else
			divisor += 1
			get_primes(number, all_factors, divisor)
		end
	end

	return all_factors
end

# Collect all the factors in a hash with the min quantity required of each
# Returns hash with key of factor and value of quantity times required
def aggregate_factors(prime_factors, all_factors = {})
	prime_factors.each do |i|
		quantity = prime_factors.count(i)
		key = i.to_s

		# Update the all_factors hash if quantity is less or key isn't yet included
		if all_factors.has_key?(key)
			all_factors[key] = quantity if all_factors[key] < quantity
		else
			all_factors[key] = quantity
		end
	end

	all_factors
end

# Multiply all the factors by and return the result
def get_result(all_factors)
	result = 1

	all_factors.each do | key, value |
		result = result * (key.to_i ** value.to_i)
	end

	result
end

def lowest_evenly_divisible(number)
	all_factors = {}

	(2..number).each do |i|
		all_factors = aggregate_factors(get_primes(i), all_factors)
	end

	puts get_result(all_factors)
end

def duration
	start = Time.now
	yield
	puts 'Operation took ' + (Time.now - start).to_s + ' seconds'
end

duration {lowest_evenly_divisible(20)}
