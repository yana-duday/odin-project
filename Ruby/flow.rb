index = 99

while index > 0
	puts "#{index} bottles of beer on the wall, #{index} bottles of beer..."
	puts "take one down, pass it around..."
	index = index.to_i - 1
	if (index != 0)
		puts "#{index} bottles of beer on the wall"
	else
		puts "No more bottles of beer on the wall!"
	end
end
