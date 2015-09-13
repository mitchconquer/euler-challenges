# a + b + c = 1000
# Find product abc

# Since a < b < c, I can start from a and find b and c that match the req that a + b + c = 1000
# then I can test if they are a pythagorean triplet

sum = 1000
a = 3
b = 4
c = 5

while a + b + c != sum
	a += 1
	while a + b + c != sum
		b += 1
		while a + b + c != sum
			c += 1
		end
	end
	c = sum - a - b
end

