def reverse_it input
	characters = input.split(//)
	output = ''
	key = characters.count - 1

	while key >= 0
		output << characters[key]
		key -= 1
	end
	
	output
end

string = 'nifty trick!'

puts reverse_it string