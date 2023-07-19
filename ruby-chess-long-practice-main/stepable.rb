module Stepable
    def moves
        poss_moves = []
        move_dirs.each do |dir|
            row, col = dir
            if inside_board?(row, col)
                if @board[row][col].empty?
                    poss_moves << @board[row][col]
                elsif @board[row][col].color != self.color
                    poss_moves << @board[row][col]
                end
            end
        end
        poss_moves
    end

    def inside_board?(row, col)
        return false if row < 0 || row > 7
        return false if col < 0 || col > 7
        true
    end
  
end