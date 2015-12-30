# Excerise in prep for Code Academy second coding test
# Create simple Tower of Hanoi game

class Hanoi

	def initialize
		@pile1 = []
		@pile2 = []
		@pile3 = []
		@won = false

		add_disks(request_disks)

		until @won
			conduct_turn
		end
	end

	def request_disks
		disks = nil
		puts 'How many disks would you like to use? (3 to 10)'
		disks = gets.chomp.to_i
		puts ''

		if (!disks.is_a? Integer) || (disks > 10) || (disks < 3)
			puts 'Argghghh enter a number between 3 and 10 k tnx!'.red
			puts ''
			disks = request_disks
		end

		return disks
	end	

	def add_disks disks
		disk = 1
		until disk > disks
			@pile1.push disk
			disk += 1
		end
	end

	def display
		puts 'Pile 1'.green
		@pile1.each { |x| puts x.to_s.green }
		puts ''
		puts 'Pile 2'.magenta
		@pile2.each { |x| puts x.to_s.magenta }
		puts ''
		puts 'Pile 3'.cyan
		@pile3.each { |x| puts x.to_s.cyan }
	end

	def request_from
		puts ''
		puts 'Which pile would you like to move the top disk from? 1, 2 or 3?'
		from = gets.chomp.to_i
		puts ''

		if (!from.is_a? Integer) || (from > 3) || (from < 1)
			puts 'Ummm, actually you can only pick one of the availble piles... soooo.... you wanna try again?'.red
			puts ''
			from = request_from
		end

		from
	end

	def request_to
		puts ''
		puts 'OK great so which pile do you want to move it to? 1, 2 or 3?'
		to = gets.chomp.to_i
		puts ''

		if (!to.is_a? Integer) || (to > 3) || (to < 1)
			puts 'Ummm, actually you can only pick one of the availble piles... soooo.... you wanna try again?'.red
			puts ''
			display
			puts ''
			to = request_to
		end

		to
	end

	def move_disk(moves)
		from = moves[:from].to_i
		to = moves[:to].to_i

		if from == 1
			disk = @pile1.shift
		elsif from == 2
			disk = @pile2.shift
		else
			disk = @pile3.shift
		end

		if to == 1
			@pile1.unshift disk
		elsif to == 2
			@pile2.unshift disk
		else
			@pile3.unshift disk
		end
	end

	def conduct_turn
		display
		from = request_from
		to = request_to
		
		if moves_valid?({ from: from, to: to })
			move_disk({from: from, to: to})
		else
			puts ''
			puts "!! Nerp, you can only put disks on empty piles or disks \nthat are larger & you can't take from an empty pile".red
			puts ''
			conduct_turn
		end
				
		return false unless check_win
		
		puts ''
		display
		puts ''
		puts '  YASSS QUEEN!  You did it!  '.bg_gray.magenta.blink
		puts ''
		puts ('  YAS!  '.bg_gray.magenta.blink + '  YAS!  '.bg_magenta.gray.blink) * 50
		
		@won = true
	end

	def check_win
		return false unless @pile1.empty? && @pile2.empty?
		
		upper = 0
		lower = 0
		@pile3.each do |x|
			upper = lower
			lower = x
			return false if upper > lower
		end

		true
	end

	def moves_valid?(moves)
		from = moves[:from].to_i
		to = moves[:to].to_i

		if from == 1
			disk1 = @pile1.first
			return false if !disk1
		elsif from == 2
			disk1 = @pile2.first
			return false if !disk1
		else
			disk1 = @pile3.first
			return false if !disk1
		end

		if to == 1
			disk2 = @pile1.first
			return true if !disk2
		elsif to == 2
			disk2 = @pile2.first
			return true if !disk2
		else
			disk2 = @pile3.first
			return true if !disk2
		end

		disk1 < disk2
	end

end

class String
	def black;          "\e[30m#{self}\e[0m" end
	def red;            "\e[31m#{self}\e[0m" end
	def green;          "\e[32m#{self}\e[0m" end
	def brown;          "\e[33m#{self}\e[0m" end
	def blue;           "\e[34m#{self}\e[0m" end
	def magenta;        "\e[35m#{self}\e[0m" end
	def cyan;           "\e[36m#{self}\e[0m" end
	def gray;           "\e[37m#{self}\e[0m" end

	def bg_black;       "\e[40m#{self}\e[0m" end
	def bg_red;         "\e[41m#{self}\e[0m" end
	def bg_green;       "\e[42m#{self}\e[0m" end
	def bg_brown;       "\e[43m#{self}\e[0m" end
	def bg_blue;        "\e[44m#{self}\e[0m" end
	def bg_magenta;     "\e[45m#{self}\e[0m" end
	def bg_cyan;        "\e[46m#{self}\e[0m" end
	def bg_gray;        "\e[47m#{self}\e[0m" end

	def bold;           "\e[1m#{self}\e[22m" end
	def italic;         "\e[3m#{self}\e[23m" end
	def underline;      "\e[4m#{self}\e[24m" end
	def blink;          "\e[5m#{self}\e[25m" end
	def reverse_color;  "\e[7m#{self}\e[27m" end
end

game = Hanoi.new
