# App Academy coding challenge two prep work
# Correct given hash by offsetting values by one

def hash_correct hash
	output = {}
	hash.each do | key, value |
		new_key = value.slice(0).to_sym
		output[new_key] = value
	end
	output
end

wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }

puts hash_correct wrong_hash