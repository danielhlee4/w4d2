require_relative "./slideable.rb"

class Bishop < Piece 
  include Slideable 
  def move_dirs
   diagonal_dirs
  end
end