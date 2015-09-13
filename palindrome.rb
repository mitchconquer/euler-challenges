# Does two types of checks for the largest pairs of 3 digit multipliers to make a palindrome
# The first will check all values between 100 to 999 against each multiplier countring down from 999
# The second will reduce both multipliers by one each time the loop runs
# The program will then compare which method yeilded the higher value by comparing the averages of the multipliers

multiplier_one = 1000
multiplier_two = 1000
palindrome = 10

while (palindrome.to_s != palindrome.to_s.reverse) && palindrome != 0 && multiplier_one.to_s.length > 2 && multiplier_two.to_s.length > 2
	multiplier_one -= 1
	multiplier_two = 999
	#puts "Reducing multiplier_one to #{multiplier_one}"
	
	(1..898).each do
		multiplier_two -= 1
		palindrome = multiplier_one * multiplier_two
		#puts "Testing #{multiplier_one} * #{multiplier_two} = #{palindrome}"
		if (palindrome.to_s == palindrome.to_s.reverse) && palindrome != 0 && multiplier_two.to_s.length > 2
			#puts "breaking"
			#puts "multiplier_two.to_s.length = #{multiplier_two.to_s.length}"
			break
		end
	end

	if multiplier_one < 1
		puts "Error: multiplier_one < 1 (#{multiplier_one})"
		break
	end
end

multiplier_three = 1000
multiplier_four = 1000
palindrome_two = 10

while palindrome_two.to_s != palindrome_two.to_s.reverse
	multiplier_three -= 1
	multiplier_four -= 1
	palindrome_two = multiplier_three * multiplier_four
end

if (multiplier_one + multiplier_two) / 2 > (multiplier_three + multiplier_four) / 2
	puts "#{multiplier_one} * #{multiplier_two} = #{palindrome}"
else
	puts "#{multiplier_three} * #{multiplier_four} = #{palindrome_two}"
end