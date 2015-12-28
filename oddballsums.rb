# Find sum of all odd elements
series = [1,2,1]
def oddball_sum(series)
	series.inject(0){ |sum, x| x.even? ? sum : sum + x }
end

# puts "Please input an array"
puts "The sum of the odds of #{series} is #{oddball_sum(series)}"