puts "Start year?"
year1 = gets.to_i
puts "End year?"
year2 = gets.to_i
year = year1

puts "The leap years between #{year1} and #{year2} are:"

while year <= year2	
	if year % 100 == 0
		if year % 400 == 0
			puts year
		end
	elsif year % 4 == 0
		puts year
	end
	year += 1
end