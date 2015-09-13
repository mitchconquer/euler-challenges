favorites = []
ask = true

while ask == true
	puts "What are your favorite things?"
	favorite = gets.chomp
	if favorite == ''
		ask = false
	else
		favorites.push favorite
	end
end

puts "You're favorite things are:"

# Sorts by first two characters without using the sort method

alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

# Check the first letter of the favorite
alphabet.each do |letter|
	favorites.each do |favorite|
		if favorite[0,1] == letter
			# Check the second letter of the favorite
			alphabet.each do |second_letter|
				if favorite[1,1] == second_letter
					# If the 1st and 2nd letter match, puts the favorite
					puts favorite
				end
			end
		end
	end
end
		