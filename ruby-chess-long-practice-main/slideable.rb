module Slideable
    HORIZONTAL_DIRS = [ [0,1], [1,0], [0,-1], [-1, 0] ]

    DIAGONAL_DIRS = [ [1,1], [1,-1], [-1,1], [-1,1] ]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end



    def grow_unblocked_moves_in_dir(dx, dy)
         moves = []
         curr_pos = self.pos
         x, y = curr_pos 
         # next_pos = [dx + x, dy + y]
         next_x = dx + x
         next_y = dy + y
        until !@board[next_x][next_y].empty? || !inside_board?(next_x, next_y) # Pos not empty || Out of bounds
            moves << [next_x, next_y] 
            next_x += dx
            next_y += dy
        end
        if !inside_board?(next_x, next_y)
            return moves    
        elsif @board[next_x][next_y].color == self.color 
            return moves 
        else 
           return moves << [next_x, next_y]
        end

    end

    def inside_board?(row, col)
        return false if row < 0 || row > 7
        return false if col < 0 || col > 7
        true
    end

    def moves # move_dirs is an array of 4 directions
        poss_moves = []
        #do we need to define move dirs so that it doesnt raise an error in specific cases?
        move_dirs.each do |dir|
            row, col = dir
            poss_moves += grow_unblocked_moves_in_dir(row, col)
        end
        poss_moves
    end
end