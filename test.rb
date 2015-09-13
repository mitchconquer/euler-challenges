conversation = true
bye_counter = 1

while conversation == true do
	puts "What do you want to say to grandma?"
	phrase = gets.chomp
	if phrase == "BYE"
		if bye_counter >= 3
			conversation = false
			puts "OK BYE BYE!"
		end
		bye_counter += 1
	elsif phrase == phrase.upcase
		year = rand(1930..1950)
		puts "NO, NOT SINCE #{year}"
		bye_counter = 1
	else 
		puts "HUH?! SPEAK UP"
		bye_counter = 1
	end
end
