# Find sum of multiples of 3 and 5 < 100

max = 1000
sum = 0

(1..(max-1)).each { |x| sum += x if (x % 3 == 0 || x % 5 == 0)}

puts "Sum is #{sum}"