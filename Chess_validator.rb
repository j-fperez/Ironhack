class Board
	attr_accesor :grid
	def initialize (grid=default_grid)
	@grid = grid
	end

	def default_grid
	Array.new(8) { Array.new(8) { "" } }
	end
end

class Pieces
	def initialize(color_piece, position_piece)
		@color_piece = color_piece
		@position_piece = position_piece
	end
end

class Rooks > Pieces
	def check_move_rooks
		if new_position(0) = check_position(0)
			check_correct_position = true
		elsif new_position(1) = new_position(1)
			check_correct_position = true
		else
			check_correct_position = false
		end
	end
end

def draw_new_board
board_game = Board.new()
print grid
end

def fix_initial_position
black_rook = Rooks.new("black", [5,3])
white_rook = Rooks.new("white", (7,6))
end

def read_moves_file
	moves_file = File.new("chessmoves.txt")
end

def devuelve_origen_y_destino
origin = piece_move.byteslice(0, 1)
destination = piece_move.byteslices(3,4)
end

def convert_moves_files_in_numbers_array(origin,destination)
row_origin = origin.byteslices(1).to_i
column_origin = origin.byteslices(0)
new_row_origin = origin-1
new_column_origin = (column_origin.ord)-97 
end



draw_new_board
fix_initial_position

read_moves_files

for moves_file.readlines each in element
	convert_moves_files_in_numbers_array
	check_move_rooks
	if check_correct_position == true
		puts "The movement is correct"
	else
		puts "The movement is incorrect"
	end
end