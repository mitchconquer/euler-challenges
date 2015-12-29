# Find the largest palindrome that's the product of two 3-digit numbers
# This solution is inspired by http://www.mathblog.dk/project-euler-problem-4/

def get_next_palindrome(starting_palindrome = 998899)
	# largest possible palindrome is less than 999 * 999 = 998_001 so 997_799
	# Take the current palindrome and find the next smallest one

	# Just in case our starting_palindrome is nil
	starting_palindrome = 998899 if starting_palindrome == nil

	first_half = (starting_palindrome.to_s[0, 3]).to_i - 1
	palindrome = (first_half.to_s + first_half.to_s.reverse).to_i

	return palindrome
end

def get_factors(palindrome)
	# Factor A must be 3 digits (>=100) and <= palindrome**0.5
	#
	# Note: since sqrt seems to not want to work with such large numbers
	# am using 999 as a stand in

	max = 999
	min = 100
	factor = max

	until factor == min
		return [factor, (palindrome / factor)] if palindrome % factor == 0 && 
			((palindrome / factor > 99) && (palindrome / factor < 1000))
		factor -= 1
	end

	# No suitable factors found
	return nil
end

def get_largest_factors(palindrome = nil)
	palindrome = get_next_palindrome(palindrome)
	factors = get_factors(palindrome)

	# If get_factors returned with suitable answers, display them
	if factors
		factor1 = factors[0]
		factor2 = factors[1]

		puts 'Factor 1: ' +	factor1.to_s
		puts 'Factor 2: ' +	factor2.to_s
		puts 'Palindrome: ' + palindrome.to_s
	else

		# If no suitable factors were found for current palindrome, try again!
		get_largest_factors(palindrome)
	end
end

get_largest_factors