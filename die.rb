class Die

	def initialize
		roll
	end

	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end

	def cheat(value)
		if value > 0 && value < 7
			@number_showing = value
		else
			puts "Die only has sides 1 through 6!"
		end
	end
end

puts Die.new.showing