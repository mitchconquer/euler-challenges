def billionthSecond birth_time
	birth_time + 1000000000
end

def formatTime (year, month, day, hour, minute, second)
	Time.mktime(year, month, day, hour, minute, second)
end

def spanks birth_time
	now = Time.new
	current_year = now.strftime("%Y")
	birth_year = birth_time.strftime("%Y")
	years_old = current_year.to_i - birth_year.to_i
	years_old.times{|i| puts "SPAAAANK! \##{i+1}"}
end


puts "When was your birth year?"
year = gets.to_i
puts "When was your birth month?"
month = gets.to_i
puts "When was your birth day?"
day = gets.to_i
puts "when was your birth hour?"
hour = gets.to_i
puts "When was your birth minute?"
minute = gets.to_i
puts "When was your birth second?"
second = gets.to_i

birth_time = formatTime(year, month, day, hour, minute, second)
spanks birth_time
print "Your billionth second will be/was on: "
puts billionthSecond birth_time