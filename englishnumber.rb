def englishNumber(number)
	# We only want numbers 0-100
	if number < 0
		return "Please enter a number zero or greater."
	end
	if number == 0
		return 'zero'
	end

	numString = ''

	ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	left = number 
	write = left/1000000000000 # How many trillions left to write out?
	left = left - write * 1000000000000 # Subtract off those trillions

	if write > 0
		trillions = englishNumber write
		numString = numString + trillions + ' trillion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left/1000000000 # How many billions left to write out?
	left = left - write * 1000000000 # Subtract off those billions

	if write > 0
		billions = englishNumber write
		numString = numString + billions + ' billion'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left/1000000 # How many millions left to write out?
	left = left - write * 1000000 # Subtract off those millions

	if write > 0
		millions = englishNumber write
		numString = numString + millions + ' million'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left/1000 # How many thousands left to write out?
	left = left - write * 1000 # Subtract off those thousands

	if write > 0
		thousands = englishNumber write
		numString = numString + thousands + ' thousand'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left/100 # How many hundreds left to write out?
	left = left - write * 100 # Subtract off those hundreds

	if write > 0
		hundreds = englishNumber write
		numString = numString + hundreds + ' hundred'
		if left > 0
			numString = numString + ' '
		end
	end

	write = left/10
	left = left - write * 10

	if write > 0
		if ((write == 1) and (left > 0))
			numString = numString + teenagers[left-1]
			left = 0
		else
			numString = numString + tens_place[write-1]
		end

		if left > 0
			numString = numString + '-'
		end
	end

	write = left
	left = 0

	if write > 0
		numString = numString + ones_place[write-1]
	end
	numString
end

puts "How many bottles are on the wall?"
bottles = gets.to_i
bottle = bottles
while bottle >= 0
	puts "#{englishNumber(bottle)} bottles of beer on the wall..."
	bottle -= 1
end