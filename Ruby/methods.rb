# Counts the number of characters in a name #
=begin 
puts 'What is your first name?'
f_name = gets.chomp
puts 'What is your middle name?'
m_name = gets.chomp
puts 'What is your last name?'
l_name = gets.chomp
full_name = f_name.length + m_name.length + l_name.length
puts 'Did you know there are ' + full_name.to_s +
     ' characters in your name, ' + f_name + '?'
=end

# RUDE BOSS PROGRAM #
=begin
puts "WADDYA WANT"
request = gets.chomp
puts "WADDAYA MEAN '" + request.upcase + "'?!? YOU'RE FIRED!!!"
=end

# TABLE OF CONTENTS #
lineWidth = 50
toc = "Table of Contents"
ch1 = "Chapter 1: Numbers"
ch1_page = "page 1"
ch2 = "Chapter 2: Letters"
ch2_page = "page 72"
ch3 = "Chapter 3: Variables"
ch3_page = "page 118"

puts ""
puts toc.center(lineWidth)
puts ""
puts ch1.ljust(lineWidth/2) + ch1_page.rjust(lineWidth/2)
puts ch2.ljust(lineWidth/2) + ch2_page.rjust(lineWidth/2)
puts ch3.ljust(lineWidth/2) + ch3_page.rjust(lineWidth/2)