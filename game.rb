require_relative 'players.rb'
require_relative 'gameboard.rb'

puts "TIC TAC TOE\n"
puts "\nPLAYER 1"
player1 = Player.new 1, "M"
player1.display
puts "\nPLAYER 2"
player2 = Player.new 2, "N"
player2.display

print "\nEnter the dimension of the playing board (integer): "
dim = gets.to_i
board = Board.new dim

counter = 0
max_moves = dim * dim

while counter < max_moves do
	system ("clear")

	if counter % 2 == 0
		i = 1
		letter = "M"
	else
		i = 2
		letter = "N"
	end

	board.print_board
	print "\nPlayer #{i}: Enter the x coordinate: "
	x = gets.to_i
	print "Player #{i}: Enter the y coordinate: "
	y = gets.to_i
 	board.user_input x, y, letter
 	if board.flag == 1
 		board.flag = 0
 		redo
 	end

 	winner = board.win x, y
 	if winner
 		puts "Congratulations, Player #{i} won!"
 		board.print_board
 		break
 	end

 	counter = counter + 1
end 

if counter == 9
	board.print_board
	puts "It's a draw!"
end

