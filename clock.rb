def checkClock &chimer
	hours = Time.now.hour
	if hours > 12
		hours -= 12
	end

	hours.times{chimer.call}
end

checkClock do
	puts 'Hiya!'
end
