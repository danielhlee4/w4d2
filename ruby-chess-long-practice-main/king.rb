require_relative "./stepable.rb"

class King < Piece 
  include Stepable
  
  KING_MOVES = [ [-1,-1], [-1,1], [-1,0], [1,0], [1,-1], [1,1], [0,-1],
                    [0,1] ]                
  def move_dirs
    KING_MOVES
  end

end