class OrangeTree

	def initialize name
		@name = name
		@height = 12
		@fruitYield = 0
		@fruit = 0
		puts @name + ' sprouts and grows to ' + @height.to_s + ' inch tall.'
		oneYearPasses
	end

	def pickAnOrange
		if @fruit > 0
			@fruit -= 1
			puts 'You pick 1 orange so there are ' + @fruit.to_s + ' left.'
		else
			puts 'There are no oranges to pick.'
		end
	end

	def oneYearPasses
		@height += 6
		if @height > 24
			@fruitYield += 6
		end

		@fruit = @fruitYield

		print 'One year passes and '
		puts @name + ' is now ' + @height.to_s + ' inches tall and can has ' + @fruit.to_s + ' oranges.'
	end
end

sunny = OrangeTree.new 'Sunny'
sunny.pickAnOrange
sunny.oneYearPasses
sunny.oneYearPasses
sunny.oneYearPasses
5.times{sunny.pickAnOrange}