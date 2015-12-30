# Excerise in prep for Code Academy second coding test
# Transpose rows and columns

def num_to_s(num, base)
	return nil if (base < 2) || (base > 16)
	base10 = num
	big_nums = {"a" => 10,
							"b" => 11,
							"c" => 12,
							"d" => 13,
							"e" => 14,
							"f" => 15,}

	digits = []

	until base10 < base
		digits.unshift base10 % base
		base10 = base10 / base
	end

	digits.unshift base10

	result = ''

	digits.each do | x |
		x = big_nums.key(x) if x > 9
		result << x.to_s
	end

	return result	
end

puts num_to_s(2838238, 2)
puts num_to_s(32932, 8)
puts num_to_s(45, 16)
puts num_to_s(45, 7)