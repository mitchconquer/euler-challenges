nums = (1..100)

puts nums.select do |i|
	factor = 1
	square = false

	while factor <= Math.sqrt(i).to_i
		square = true if factor * factor == i
		factor += 1
	end
end