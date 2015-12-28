def prime_factors(number)
	remainder = number
	primes = Array.new
	counter =  2 # Initial value

	while counter * counter <= remainder # If the counter is larger than the square root, no need to keep testing because the number can't have any prime factors above the square root except itself
		if remainder % counter == 0
			remainder = remainder / counter
			primes.push counter
		else
			counter += 1
		end
	end

	if remainder > counter
		primes.push remainder # If the remainder is larger than one, it's also a prime factor.  If it's larger than the largest, then it's the largest :)
	end
	
	primes
end

puts "What number do you want to find the largest prime factor for?"
number = gets.chomp.to_i
puts "Searching..."
primes = prime_factors(number)
print "The largest prime factor of #{number} is #{primes.last}"