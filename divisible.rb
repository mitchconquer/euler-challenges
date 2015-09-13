max = 20
divisible = false
result = 0
start = Time.now
primes = [] # Holds all prime numbers from 1 to max

# Find the largest prime number since it will probably be a dickhead about almost
(1..max).each do |x|
	prime = true
	(1..x).each do |y|
		prime = false if x % y != 0
	end
	primes << x if prime == true
end

while divisible == false
	result += (max * primes.last)
	divisible = true
	if result % primes.last == 0 # First check if result is divisble by the largest prime number of between 1 and max to save time
		(2..max).each do |x|
			if result % x != 0
				divisible = false
				puts "Breaking. #{result} is not evenly divisble by #{x}"
				break # break out of the .each loop
			end
		end
	end
end

puts "The smallest number evenly divisible by all numbers from 1 to #{max} is #{result}"
puts "Operation took #{Time.now - start} seconds."