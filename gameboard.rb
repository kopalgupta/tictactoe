class Board
	attr_accessor :board, :size, :flag

	def initialize size
		@size = size
		@board = Array.new(size, " ") {Array.new(size, " ")}
		@flag = 0
	end

	def print_board
		i = 0
		puts
		while i < (@size)
			j = 0
			while j < (@size)
				print " | #{@board[i][j]}"
				j = j + 1
			end
			print " | \n"
			i = i + 1
		end
	end

	def user_input x, y, letter
		if (x > @size || y > @size)
			puts "Inorrect coordinates"
			sleep 0.5
			@flag = 1
		elsif @board[x-1][y-1] != " "
			puts "Occupied space"
			sleep 0.5
			@flag = 1
		else
			@board[x-1][y-1] = letter
			@flag = 0
		end
	end

	def win x, y
		winner = true
		val = @board[x-1][y-1]

		# horizontal win
		i = 0
		while i < @size
			if @board[x-1][i] != val
				winner = false
				break
			else
				i = i + 1
			end	
		end
		if winner
			return true
		end

		winner = true
		# vertical win
		i = 0
		while i < @size
			if @board[i][y-1] != val
				winner = false
				break
			else
				i = i + 1
			end	
		end
		if winner
			return true
		end

		winner = true
		# First diagnol win
		i = 0
		while i < @size
			if @board[i][i] != val
				winner = false
				break
			else
				i = i + 1
			end	
		end
		if winner
			return true
		end

		winner = true
		# Second diagnol win
		i = 0
		while i < @size
			if @board[i][@size-1-i] != val
				winner = false
				break
			else
				i = i + 1
			end	
		end
		if winner
			return true
		end
	return false
	end

end
