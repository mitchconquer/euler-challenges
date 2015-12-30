# Excerise in prep for Code Academy second coding test
# Transpose rows and columns

def num_to_s(num, base)
	base10 = num
	big_nums = {"a" => 10,
							"b" => 11,
							"c" => 12,
							"d" => 13,
							"e" => 14,
							"f" => 15,}

	# if base < 10
		digits = []

		until base10 <= base
			digits.unshift base10 % base
			base10 = base10 / base
			# puts 'base10 now = ' + base10.to_s
		end

		digits.unshift base10

		result = ''

		digits.each do | x |
			x = big_nums.key(x) if x > 9
			result << x.to_s
		end

		return result
	
end

puts num_to_s(38, 2)
puts num_to_s(333222323, 16)