system ("clear")
class Player
	attr_reader :name, :letter
	def initialize num, letter
		print "Enter your name: "
		@name = gets.chomp #for ignoring the newline character
		@letter = letter
	end
	def display
		puts "Hello #{@name}. Your symbol is #{@letter}"
	end
end

