# largest palindrome made from 3 digit numbers

def scan_down
	factor = 1000
	while factor > 0
		factor -= 1
		product = factor * factor
		return factor if palindrome?(product)
	end
end

def palindrome?(product)
	product.to_s == product.to_s.reverse
end

puts "The largest palindrome that is the sum of two three digit numbers is #{scan_down} * #{scan_down} = #{scan_down * scan_down}"