# Find the Pythagorean triplet for which a + b + c = 1000

# Find the next lowest number that's a perfect square
# def get_perfect_square(max)
# 	max = max - 1
# 	square = Math.sqrt(max)

# 	until square.ceil ** 2 == max
# 		break if max < 3
# 		max -= 1
# 		square = Math.sqrt(max)
# 	end

# 	return max
# end

# def get_abc(max)
# 	c = get_perfect_square(max)


# 	b = get_perfect_square(c)
# 	a = get_perfect_square(b)
# end


# puts get_abc(1000)

sum = 1000

# Starting values
c = 3
b = c - 1
c = c - b

until c > (sum - 3 ) do |iii|
	return [a,b,c] if a + b + c == 1000

	(2..(sum - c - 1)).each do |i|
		b = i
# ???????? i broke my brain