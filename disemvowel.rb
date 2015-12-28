# Delete all vowels (including y) from a string

def disemvowel(string)
	string.delete("a").delete("e").delete("i").delete("o").delete("u").delete("y")
end

puts "What string do you want to disemvowel?"
string = gets.chomp
puts "Disemvowel #{string} => #{disemvowel(string)}"