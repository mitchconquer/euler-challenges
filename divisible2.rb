# Smallest number divisible by all numbers 1 - max

def find_number(max)
	# Set initial values
	divisible = false
	current = 0
	while divisible == false
		divisible = true # Reset divisible flag
		current += max
		(2..max).each do |x| 
			if current % x != 0
				divisible = false # Set divisible flag to false if one one of the numbers isn't a factor
				break
			end
		end
	end
	return current
end

puts "Find the smallest number that is evenly divisible by 1 to what number?"
max = gets.chomp.to_i
start = Time.now
result = find_number(max)
puts "The smallest number divisible by all numbers 1 to #{max} is #{result}"
puts "This result took #{Time.now - start} seconds to find."