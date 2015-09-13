$nestedIndent = 0

def log description, &block
	$nestedIndent += 2
	$nestedIndent.times{print ' '}
	puts "Starting \"#{description}...\""
	output = block.call
	$nestedIndent.times{print ' '}
	puts "Finished \"#{description}\", returned \"#{output}\""
	$nestedIndent -= 2
end

log('outer block') do
	log 'inner block' do
		"I'm the inner block"
	end
	8903
end