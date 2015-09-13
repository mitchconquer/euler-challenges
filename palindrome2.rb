# Find largest palindrome that's a product of 3 digit numbers

def find_factors
	factor_one = 999
	factor_two = 999
	while palindrome?(factor_one * factor_two) == false
		factor_one -= 1
		factor_two -= 1
	end
	results = {"factor_one" => factor_one, "factor_two" => factor_two}
	return results
end

def palindrome?(number)
	number.to_s == number.to_s.reverse
end

results = find_factors
puts "#{results['factor_one']} * #{results['factor_two']} = #{results['factor_one'] * results['factor_two']}"