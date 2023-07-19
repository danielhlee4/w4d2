require_relative "./slideable.rb"

class Rook < Piece
include Slideable
    def move_dirs
        horizontal_dirs
    end
end