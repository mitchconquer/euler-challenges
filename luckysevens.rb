# return true if any 3 consecutive values of array == 7
series = [0,-2,1,8]
series_length = 3

def lucky_sevens?(series, series_length)
	series.length.times do |x|
		if x + series_length <= series.length
			puts "#{series[x]} + #{series[x+1]} + #{series[x+2]} = #{series[x] + series[x+1] + series[x+2]}"
			return true if series[x] + series[x+1] + series[x+2] == 7
		end
	end
	false
end

puts "Array #{series} = #{lucky_sevens?(series, series_length)}"

