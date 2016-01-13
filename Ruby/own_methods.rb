# CUSTOM METHODS FOR WRITING OUT NUMBERS #
def englishNumber number
	if number < 0
		return 'Please enter a number that is not negative'
	end
	if number == 0
		return 'zero'
	end

	numString = '' # This is the string we will return

	onesPlace = ['one',	'two', 'three', 'four', 'five', 'six', 'seven',
				 'eight', 'nine']
	tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty',
				 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
			     'sixteen', 'seventeen', 'eighteen', 'nineteen']

	remaining = number

	write = remaining/1000000
	remaining = remaining - write*1000000

	if write > 0
		millions = englishNumber write
		numString = numString + millions + ' million'

		if remaining > 0
			numString = numString + ' '
		end
	end

	write = remaining/1000
	remaining = remaining - write*1000

	if write > 0
		thousands = englishNumber write
		numString = numString + thousands + ' thousand'

		if remaining > 0
			numString = numString + ' '
		end
	end

	write = remaining/100
	remaining = remaining - write*100

	if write > 0
		hundreds = englishNumber write
		numString = numString + hundreds + ' hundred'

		if remaining > 0
			numString = numString + ' '
		end
	end

	write = remaining/10
	remaining = remaining - write*10

	if write > 0
		if ((write == 1) and (remaining > 0))
			numString = numString + teenagers[remaining-1]
			remaining=0
		else
			numString = numString + tensPlace[write-1]
		end

		if remaining > 0
			numString = numString + '-'
		end
	end

	write = remaining
	remaining = 0

	if write > 0
		numString = numString + onesPlace[write-1]
	end

	numString
end
=begin
puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)
=end

# 99 BOTTLES OF BEER ON THE WALL RE-DO #

index = 9999

while index > 0
	puts "#{englishNumber index} bottles of beer on the wall, #{englishNumber index} bottles of beer..."
	puts "take one down, pass it around..."
	index = index.to_i - 1
	if (index != 0)
		puts "#{englishNumber index} bottles of beer on the wall"
	else
		puts "No more bottles of beer on the wall!"
	end
end