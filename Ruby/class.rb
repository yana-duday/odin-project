# HAPPY BIRTHDAY! # GIVES SPANKS FOR EACH YEAR ALIVE #
=begin
puts "What year were you born?"
year = gets.chomp

puts "What month were you born?"
month = gets.chomp

puts "What day were you born?"
day = gets.chomp

age = Time.mktime(year, month, day)
now = Time.new
difference = now - age
difference = difference/60/60/24/365

spank_counter = difference.floor

while spank_counter > 0
	puts "SPANK!"
	spank_counter = spank_counter - 1
end 
=end

# ORANGE TREE #
=begin
class OrangeTree

	def initialize 
		@height = 0
		@oranges = 0
		@oranges_rate = 0

		puts "An orange tree begins to grow."
	end

	def grow
		oneYearPasses
	end

	def countOranges
		puts 'There are ' + @oranges.to_s + ' oranges on the tree.'
	end

	def pickOranges
		puts 'You pick an orange. It\'s delicious!'
		@oranges = @oranges - 1
	end

	private

	def oneYearPasses
		@height = @height + 8
		puts 'The tree is now ' + @height.to_s + ' inches tall.'
		if @height > 120
			puts 'The tree has died.'
			exit
		else
			if @height > 40
			produceOranges
		end
	   end
	end

	def produceOranges
		@oranges_rate = @oranges_rate + 4
		@oranges = @oranges_rate
	end
end

tree = OrangeTree.new
puts " || grow || count || pick || exit || "
input = ""


while input != "exit" do 
	input = gets.chomp

	if input == "grow"
		puts "How many years?"
			years = gets.chomp
			years.to_i
			while years.to_i > 0
				tree.grow
				years = years.to_i - 1
			end
	else
		if input == "count"
			tree.countOranges
	else
		if input == "pick"
			tree.pickOranges
		end
	end
	end
end
=end

#GROW-A-DRAGON#

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  # He's full.
    @stuffInIntestine =  0  # He doesn't need to go.

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  def hungry?
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit  # This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

pet = Dragon.new 'Norbert'
puts " || feed || toss || walk || rock || bed || exit || "
input = ""

while input != "exit" do 
	input = gets.chomp

	if input == "feed"
		pet.feed
	else
		if input == "toss"
			pet.toss

	else
		if input == "walk"
			pet.walk
	else
		if input == "rock"
			pet.rock
	else
		if input == "bed"
			pet.putToBed
		end
	end
	end
end
end
end