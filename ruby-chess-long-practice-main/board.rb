class Board
    def initialize
        @board = Array.new(8) { Array.new(8) }
        @piece = Piece.new #placeholder
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def move_piece(start_pos, end_pos)
        # if the board start_pos is null, raise error

        # if end_pos contains current player's piece

        # if move is succesful, render board to reflect the result
    end
end

# b = Board.new
# b[0, 0] # => 'rook'