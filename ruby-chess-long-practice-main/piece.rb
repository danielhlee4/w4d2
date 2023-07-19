class Piece
  def initialize #do we need parameters?
    @color = symbol
    @board = Board.new
    @pos = []
  end

  def pos=(val)
    val.each do |coordinate|
      @pos << coordinate
    end
  end

end

