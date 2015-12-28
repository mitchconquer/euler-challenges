# Find sum of multiples of 3 or 5 below user given number

def scan(max)
	multiples = Array.new
	(1..max).each do |x|
		multiples << x if multiple?(x)
	end
	multiples.inject(0){ |sum, x| sum + x }
end

def multiple?(number)
	number % 3 == 0 || number % 5 == 0
end


puts "Up to what number do you want to find the sum of multiples of 3 or 5?"
max = gets.chomp.to_i
puts "The sum of multiples of 3 or 5 up to #{max} is #{scan(max)}"