# Find largest prime factor of given number

def prime?(number)
	prime = true
	(2..(number-1)).each do |x| 
		if number % x == 0
			prime = false
			break
		end
	end
	return prime
end

def get_factor(number)
	(2..((number/2)+1)).each do |x|
		if number % x == 0
			puts "Testing #{x}"
			if prime?(number/x)
				return number / x
			end
		end
	end
end

puts "What number do you want to get the largest prime factor of?"
number = gets.chomp.to_i
factor = get_factor(number)
puts "Largest prime of #{number} is #{factor}"