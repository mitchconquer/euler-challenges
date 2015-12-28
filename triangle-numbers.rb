# Find the first triangle number to have over 500 divisors

def get_triangle_number(base)
	(1..base).inject(0){ |sum, x| sum + x }
end

def get_divisors(triangle_number)
	divisors = 0
	(1..(Math.sqrt(triangle_number).to_i)).each{ |x| divisors += 2 if triangle_number % x == 0}
	divisors
end

def find_triangle_by_divisors(min)
	base = 0
	divisors = 0
	while divisors < min
		base += 1
		triangle_number = get_triangle_number(base)
		divisors = get_divisors(triangle_number)
	end
	triangle_number
end

puts "What's the minimum number of divisors the triangle number should have?"
min = gets.chomp.to_i
puts "Calculating..."
result = find_triangle_by_divisors(min)
puts "#{result}"