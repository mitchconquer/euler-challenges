# Find largest prime factor of a number

number = 600_851_475_143

def get_largest_prime (number = 10, divisor = 2, primes = [])
	
	if number % divisor == 0
		number = number / divisor
		primes.push divisor if !primes.include?(divisor) && is_prime?(divisor)
	
	elsif number == 1
		return primes[-1]

	else
		divisor += 1
	end

	get_largest_prime(number, divisor, primes)
end

def is_prime? (number)
	half = number / 2
	(2..half).each do |i|
		return false if number % i == 0
	end
	true
end

puts 'Finding largest prime factor for ' + number.to_s

answer = get_largest_prime(number)

print answer
