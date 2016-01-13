# WORD SORT ... USING SORT #
=begin
puts "Enter as many words as you want, one per line. When you are finished, press 'Enter' on an empty line."

words = []

word_input = gets.chomp

while word_input != ""
	words << word_input
	word_input = gets.chomp
	if word_input == ""
		puts words.sort
	else
		#do nothing
	end
end
=end

# WORD SORT WITHOUT SORT #
=begin
puts "Enter as many words as you want, one per line."
puts "When you are finished, press 'Enter' on an empty line."

words = []

word_input = gets.chomp

while word_input != ""
	words << word_input
	word_input = gets.chomp
	if word_input == ""
		puts shuffle_sort(words)
	else
		#do nothing
	end

def shuffle_sort(array)
sorted = []
	while !array.empty? #do this until the array is empty
		sorted << array.delete(array.min) #most programming languages assign the value to a string based on where it comes alphabetically
										  #so you can say stuff like 'if a<b' for example, and it will compare strings alphabetically
	end
	return sorted.join(' ')
end
end
=end

# TABLE OF CONTENTS RE-WRITE #
lineWidth = 50
toc = ["Table of Contents", "Chapter 1: Numbers", "page 1", "Chapter 2: Letters", "page 72", 
	"Chapter 3: Variables", "page 118"]

puts ""
puts toc[0].center(lineWidth)
toc.shift
puts ""
toc.each_slice(2) do |a, b|
	puts "#{a}".ljust(lineWidth/2) + "#{b}".rjust(lineWidth/2)
end