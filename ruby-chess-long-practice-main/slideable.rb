module Slideable
    HORIZONTAL_DIRS = [ [0,1], [1,0], [0,-1], [-1, 0] ]

    DIAGONAL_DIRS = [ [1,1], [1,-1], [-1,1], [-1,1] ]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    # def grow_unblocked_moves_in_dir(dx, dy)
    #     moves = []
    #     curr_pos = self.pos
    #     x, y = curr_pos 
    #     nxt_pos = [x + dx, y + dy]
    #     while nxt_pos.valid? 
    #      x, y = curr_pos 
    #      nxt_pos = [x + dx, y + dy]
    #       if nxt_pos.valid?   #if nxt_pos is valid, add it to the array of pos
    #         moves << nxt_pos 
    #       end
    #      curr_pos = nxt_poss
    #     end
    #     moves
    # end

    def grow_unblocked_moves_in_dir(dx, dy)
        moves = []
        curr_pos = self.pos
        x, y = curr_pos 

    end
end