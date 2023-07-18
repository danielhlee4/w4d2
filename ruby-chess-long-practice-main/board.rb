class Board
    def initialize
        @board = Array.new(8) { Array.new(8) }
        @piece = Piece.new #placeholder
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end
    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        # if the board start_pos is null piece or other players piece, raise error
        if @board[start_pos].is_a?(NullPiece) #did not implement to consider other players piece
            raise "error, invalid start position" 
        end
        # if end_pos contains current player's piece
        if @board[end_pos].is_a?(NullPiece) || @board[end_pos].color != 
        # if move is succesful, render board to reflect the result
    end
end

# b = Board.new
# b[0, 0] # => 'rook'