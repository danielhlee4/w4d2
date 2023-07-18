require_relative "piece.rb"
require_relative "null_piece.rb"
require "byebug"
class Board
    attr_accessor :board, :piece, :null_piece
    def initialize
        @board = Array.new(8) { Array.new(8) }
        @piece = Piece.new #placeholder
        @null_piece = NullPiece.new
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end
    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    # -----version of move_piece with color parameter-----
    # def move_piece(color, start_pos, end_pos)
    #     # if the board start_pos is null piece or other players piece, raise error
    #     if @board[start_pos].is_a?(NullPiece) || @board[start_pos].color != color
    #         raise "error, invalid start position" 
    #     end
    #     # if end_pos contains current player's piece
    #     if @board[end_pos].is_a?(NullPiece) || @board[end_pos].color != color
    #         # if move is succesful, render board to reflect the result
    #         @board[start_pos] = @null_piece
    #         @board[end_pos] = @piece
    #     else
    #         raise 'error, invalid end position'
    #     end
        
    # end

    def move_piece(start_pos, end_pos)
        # if the board start_pos is null piece or other players piece, raise error
        debugger
        if @board[start_pos].is_a?(NullPiece) 
            
            raise "error, invalid start position" 
        end
        # if end_pos contains current player's piece
        if @board[end_pos].is_a?(NullPiece) 
            # if move is succesful, render board to reflect the result
            @board[start_pos] = @null_piece
            @board[end_pos] = @piece
        else
            raise 'error, invalid end position'
        end
        
    end
    
end


b = Board.new
p = Piece.new
n = NullPiece.new

b[0, 0] # => 'rook'