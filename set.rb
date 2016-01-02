# App Academy coding challenge two prep work
# Recreating some Set methods for hash

def my_set_add_el hash, key
	if hash.is_a? Hash
		hash[key] = true
	end
	hash
end

def my_set_remove_el(hash, key)
	if hash.has_key?(key)
		hash.delete(key)
	end
	hash
end

def my_set_list_els (hash)
	hash.keys
end

def my_set_member? hash, key
	hash.has_key?(key)
end

def my_set_union original_hash, new_hash
	original_hash.merge new_hash
end

def my_set_intersection original_hash, new_hash
	output = {}
	original_hash.each do | key, value | 
		output[key] = true if new_hash.has_key?(key)
	end
	output
end

def my_set_minus original_hash, new_hash
	output = {}
	original_hash.each do | key, value |
		output[key] = true if !new_hash.has_key?(key)
	end
	output
end

my_hash = Hash.new

my_set_add_el my_hash, :x

puts my_hash

my_set_add_el my_hash, :y

puts my_hash

my_set_remove_el my_hash, :y

puts my_hash

my_set_list_els(my_hash)

puts my_set_member? my_hash, :x
puts my_set_member? my_hash, :y

puts my_set_union my_hash, {:y => true}

my_set_add_el my_hash, :t

puts my_set_intersection my_hash, {:t => true, :x => true, :y => true}

my_set_add_el my_hash, :c

puts my_hash

puts my_set_minus my_hash, {:x => true, :y => true}