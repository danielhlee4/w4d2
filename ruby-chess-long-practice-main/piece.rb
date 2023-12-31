class Piece
  attr_accessor :pos

  SYMBOLS = [:white, :black, :empty]

  def initialize(color, board, pos)
    @color = color
    @board = Board.new
    @pos = pos
  end

  def pos=(val) # assigns @pos, which is the piece's current position
    val.each do |coordinate|
      @pos = coordinate
    end
  end

  # array of all move positions
  # iterate through possible piece moves
  # check validity of the move
    # examples:
    # if there's a null piece, we can move there
    # if opposite color, we can move there
    
  def moves
    valid_moves = []

  end

  # empty? method notes
  # symbol of null piece will be :empty
  def empty?
    return true if self.color == :empty
    false
  end

end

