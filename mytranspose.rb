# Excerise in prep for Code Academy second coding test
# Transpose rows and columns

def switch_row_col(array_of_rows)
	input = array_of_rows.clone
	rows = input.size
	cols = input[0].size
	output = []

	cols.times do | i |
		output.push []
	end

	rows.times do | i |
		input[i].each_with_index do | value, index |
			output[index].push value
		end
	end

	output
end

rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

cols = switch_row_col(rows)

puts cols.inspect

cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]

rows = switch_row_col(cols)

puts rows.inspect


