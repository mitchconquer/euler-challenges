birthday = Time.gm(1984, 7, 31, (12 - 5))

billion_seconds = birthday + 1_000_000_000
puts birthday
puts billion_seconds.strftime("%c")