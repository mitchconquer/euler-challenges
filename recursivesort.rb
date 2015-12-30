# Sorting an array with recursion

def my_sort some_array
	standin = some_array.clone
	recursive_sort standin, []
end

def recursive_sort unsorted_array, sorted_array
	length = unsorted_array.join.length + 1
	value = nil
	unsorted_array.each do |x|
		if x.length < length
			length = x.length
			value = x
		end
	end
	unsorted_array.delete_at(unsorted_array.index(value))
	sorted_array.push value
	return sorted_array if unsorted_array.empty?
	recursive_sort unsorted_array, sorted_array
end

def shuffle unshuffled, shuffled = []
	return shuffled if unshuffled.empty?
	max = unshuffled.size
	key = rand(max)
	value = unshuffled[key]
	
	shuffled.push value
	unshuffled.delete_at(key)
	
	if unshuffled.empty?
		return shuffled
	else
		shuffle = shuffle unshuffled, shuffled
	end
	
	return shuffled
end

a = ['animal', 'frogz', 'mean stack man', 'frogz', 'lamp\'s soooooo old!!!!!']
puts a
puts ''
puts 'Sorted array: '
puts my_sort(a)

puts ''
puts a
puts ''
puts 'Now shuffle it!'
puts shuffle(a)