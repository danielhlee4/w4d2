class NullPiece < Piece
    attr_reader :color, :symbol
    def initialize
        @color = :empty
    end
end