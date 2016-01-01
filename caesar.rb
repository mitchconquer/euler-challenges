# Excerise in prep for Code Academy second coding test
# Create simple Caesar cypher

class String
	def caesar(shift)
		output = ''
		input = self.downcase

		input.each_byte do |x|
			coded_chr = x + shift
			coded_chr -= 26 if coded_chr > 122
			# Don't convert spaces
			coded_chr = 32 if x == 32

			output << (coded_chr).chr
		end

		output
	end
end

puts "testing cypherz".caesar 0
puts "testing cypherz".caesar 1
puts "testing cypherz".caesar 3


