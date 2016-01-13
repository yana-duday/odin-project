# 99 BOTTLES OF BEER ON THE WALL GENERATOR #
=begin
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
=end

# DEAF GRANDMA #
=begin
puts "Say something to grandma:"
bye_counter = 0

while bye_counter < 3
	input = gets.chomp
	if input != 'BYE' 
		bye_counter = 0
		if input == input.upcase
			puts "NO, NOT SINCE #{rand(1930..1950)}"
		else
			puts "HUH?! SPEAK UP, SONNY!"
		end
	else
		puts "NO, NOT SINCE #{rand(1930..1950)}"
		bye_counter = bye_counter + 1
	end
end

puts "VISIT AGAIN SOON, DEARY"
=end

# LEAP YEARS #
puts "Enter a starting year: "
start_year = gets.chomp
puts "Enter an ending year: "
end_year = gets.chomp

years=*(start_year..end_year)

years.each do |i|
	if i.to_i%4 == 0
		if (i.to_i%100 == 0)
			if (i.to_i%400 == 0)
				puts i
			else
				# do nothing
			end
		else
			#do nothing
		end
	else
		puts i
	end
end
