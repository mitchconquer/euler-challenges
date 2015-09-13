class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuffInBelly = 10 # He's full
		@stuffInIntestine = 0 # He doesn't need to go

		puts @name + ' is born.'
	end

	def handler command
		if command.downcase == 'feed'
			feed
		elsif command.downcase == 'walk'
			walk
		elsif command.downcase == 'exit'
			exit
		elsif command.downcase == 'put to bed'
			putToBed
		elsif command.downcase == 'toss'
			toss
		elsif command.downcase == 'rock'
			rock
		end
	end
	
	def feed
		puts 'You feed ' + @name + '.'
		@stuffInBelly = 10
		passageOfTime
	end

	def walk
		puts 'You walk ' + @name + '.'
		@stuffInIntestine = 0
		passageOfTime
	end

	def putToBed
		puts 'You put ' + @name + ' to bed.'
		@asleep = true
		3.times do
			if @asleep
				passageOfTime
			end
			if @asleep
				puts @name + ' snores, filling the room with smoke.'
			end
		end
		if @asleep
			@asleep = false
			puts @name + ' wakes up slowly'
		end
	end

	def toss
		puts 'You toss ' + @name + ' up into the air.'
		puts 'He giggles, which singes your eyebrows.'
		passageOfTime
	end

	def rock
		puts 'You rock ' + @name + ' gently.'
		@asleep = true
		puts 'He briefly dozes off...'
		passageOfTime
		if @asleep
			@asleep = false
			puts '...but wakes when you stop.'
		end
	end

	private

	def hungry?
		@stuffInBelly <= 2
	end

	def poopy?
		@stuffInIntestine >= 8
	end

	def passageOfTime
		if @stuffInBelly > 0
			@stuffInBelly -= 1
			@stuffInIntestine += 1
		else
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + ' is starving! In desperation, he ate YOU!'
			exit
		end

		if @stuffInIntestine >= 10
			@stuffInIntestine = 0
			puts 'Woops! ' + @name + ' had an accident...'
		end

		if hungry?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + '\'s stomach grumbles...'
		end

		if poopy?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + ' does the potty dance...'
		end
	end
end

pet = Dragon.new 'Norbert'
loop do
	puts 'What would you like to do?  You can feed, walk, put to bed, toss or rock the dragon.  You can also exit.'
	pet.handler gets.chomp
end