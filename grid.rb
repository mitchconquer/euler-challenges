module Render
	# attr_reader :grid, :height, :array, :width

	# def initialize(args)
	# 	@grid = args.fetch(args['grid'])
	# 	@height = grid.height
	# 	@width = grid.width
	# 	@array = grid.array
	# end

	def display
		height.times do |x|
			row = ""
			width.times do |y|
				if winning_coordinate?([x, y])
					row += "\033[35m" + array[x][y].to_s + "\033[0m"
				else
					row += array[x][y].to_s
				end
				row += "  "
			end
			puts row # Display each row
		end
	end

	def winning_coordinate?(coordinate)
		@winning_series.include? coordinate
	end
end

class Grid
	attr_reader :width, :height, :array, :series_length
	attr_accessor :winning_series, :winning_product

	include Render

	def initialize(args)
		@width = args.fetch(:width, 20)
		@height = args.fetch(:height, 20)
		@array = self.create
		@winning_series = [0]
		@winning_product = 0
		@series_length = args.fetch(:series_length, 4)
	end

	def create
		grid_array = []
		height.times do
			grid_array << create_row # Add the row to the grid_array
		end
		return grid_array
	end

	def create_row
		row = []
		width.times do
			row << rand(90) + 10 # Add the double digit cells to the row
		end
		return row
	end

	def biggest_yet?(candidate_product)
		candidate_product > winning_product
	end

	def update_winner(candidate_product, candidate_series)
		@winning_product = candidate_product
		@winning_series = candidate_series
	end

	def check_up(x, y)
		if (y + 1) >= series_length
			candidate_series = [[x, y]]
			(series_length - 1).times do
				y -= 1
				candidate_series << [x, y]
			end
		else
			return 0
		end
		return candidate_series
	end

	def check_down(x, y)
		if (y + series_length) <= height
			candidate_series = [[x, y]]
			(series_length - 1).times do
				y += 1
				candidate_series << [x, y]
			end
		else
			return 0
		end
		return candidate_series
	end

	def check_left(x, y)
		if (x + 1) >= series_length
			candidate_series = [[x, y]]
			(series_length - 1).times do
				x -= 1
				candidate_series << [x, y]
			end
		else
			return 0
		end
		return candidate_series
	end

	def check_right(x, y)
		if (x + series_length) <= width
			candidate_series = [[x, y]]
			(series_length - 1).times do
				x += 1
				candidate_series << [x, y]
			end
		else
			return 0
		end
		return candidate_series
	end

	def check_up_right(x, y)
		if (x + series_length) <= width && (y + 1) >= series_length
			candidate_series = [[x, y]]
			(series_length - 1).times do
				x += 1
				y -= 1
				candidate_series << [x, y]
			end
		else
			return 0
		end
		return candidate_series
	end

	def check_up_left(x, y)
		if (x + 1) >= series_length && (y + 1) >= series_length
			candidate_series = [[x, y]]
			(series_length - 1).times do
				x -= 1
				y -= 1
				candidate_series << [x, y]
			end
		else
			return 0
		end
		return candidate_series
	end

	def check_down_left(x, y)
		if (x + 1) >= series_length && (y + series_length) <= height
			candidate_series = [[x, y]]
			(series_length - 1).times do
				x -= 1
				y += 1
				candidate_series << [x, y]
			end
		else
			return 0
		end
		return candidate_series
	end

	def check_down_right(x, y)
		if (x + series_length) <= width && (y + series_length) <= height
			candidate_series = [[x, y]]
			(series_length - 1).times do
				x += 1
				y += 1
				candidate_series << [x, y]
			end
		else
			return 0
		end
		return candidate_series
	end

	def get_product(series)
		return 0 if series == 0
		product = 1
		series.each do |coordinate|
			x = coordinate[0]
			y = coordinate[1]
			product = product * array[x][y]
		end
		product
	end

	def test(x, y)
		if biggest_yet?(get_product(check_up(x,y)))
			update_winner(get_product(check_up(x,y)), check_up(x,y))
		end
		if biggest_yet?(get_product(check_down(x,y)))
			update_winner(get_product(check_down(x,y)), check_down(x,y))
		end
		if biggest_yet?(get_product(check_left(x,y)))
			update_winner(get_product(check_left(x,y)), check_left(x,y))
		end
		if biggest_yet?(get_product(check_right(x,y)))
			update_winner(get_product(check_right(x,y)), check_right(x,y))
		end
		if biggest_yet?(get_product(check_up_right(x,y)))
			update_winner(get_product(check_up_right(x,y)), check_up_right(x,y))
		end
		if biggest_yet?(get_product(check_down_right(x,y)))
			update_winner(get_product(check_down_right(x,y)), check_down_right(x,y))
		end
		if biggest_yet?(get_product(check_up_left(x,y)))
			update_winner(get_product(check_up_left(x,y)), check_up_left(x,y))
		end
		if biggest_yet?(get_product(check_down_right(x,y)))
			update_winner(get_product(check_down_right(x,y)), check_down_right(x,y))
		end
	end

	def scan_grid
		array.length.times do |y|
			array[y].length.times do |x|
				test(x, y)
			end
		end
	end

	# def scan_vertical
	# 	rows = Array.new
	# 	series_length.times do |x|
	# 		rows << x
	# 	end
	# 	(height - series_length).times do
	# 		width.times do |x|
	# 			candidate_series = Array.new
	# 			candidate_product = 1
	# 			rows.each do |y|
	# 				cell = array[y][x]
	# 				coordinates = [x, y] # In [horizontal_pos, vertical_pos] format
	# 				candidate_series << coordinates
	# 				candidate_product = candidate_product * cell
	# 			end
	# 			# puts "#{candidate_series} gives #{candidate_product}"
	# 			if biggest_yet?(candidate_product)
	# 				update_winner(candidate_product, candidate_series)
	# 			end
	# 		end
	# 		rows = rows.map{ |x| x + 1 } # Move the vertical series down by one row
	# 	end
	# end # scan_vertical
end

test = Grid.new(width: 40, height: 41, series_length: 30)
test.scan_grid
print "Winning product: "
p test.winning_product
print "Winning Series: "
p test.winning_series
test.display







