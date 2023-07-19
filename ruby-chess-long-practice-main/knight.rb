require_relative "./stepable.rb"

class Knight < Piece 
  include Stepable
  
  KNIGHT_MOVES = [ [1,-2], [2,-1], [2,1], [1,2], [-1,2], [-2,1], [-2,-1],
                    [-1,-2] ]                
  def move_dirs
    KNIGHT_MOVES
  end

end