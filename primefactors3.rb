# Find largest prime factor of given number

number = 600851475143

def largest_prime_factor(number)
	(2..(number/2)).each do |x|
		if number % x == 0
			return number / x if prime?(number / x)
		end
	end
end

def prime?(factor)
	(2..(factor - 1)).all?{ |x| factor % x != 0 }
end

puts "Largest prime factor of #{number} is #{largest_prime_factor(number)}"