module slidingpiece

  HORIZONTAL = [[0,-1],[0,1],[1,0],[-1,0]]
  DIAGONAL = [[1,1],[1,-1],[-1,-1],[-1,1]]

  def moves
    result = []
    self.move_dirs.each do |e|
      result << grow_unblocked_moves_in_dir(e[0],e[1])
    end
    result
  end

 #when calling grow_unblocked_moves_in_dir, make sure that
 #the initial position is valid_move.
  def grow_unblocked_moves_in_dir(dx,dy)
    init = self.pos
    x_coord = self.pos[0]+dx
    y_coord = self.pos[1]+dy
    xysave = [x_coord,y_coord]
    psmoves = []
    while valid_pos?(xysave) && empty?(xysave)
      psmoves << xysave
      xysave[0] += dx
      xysave[1] += dy
    end

    while valid_pos?(xysasve)
      if empty?(xysave)
        psmoves << xysave
        xysave[0] += dx
        xysave[1] += dy
      elsif self[xysave].color != initial.color
        psmoves << xysave
        break
      else
        break
      end
    end  
    return psmoves

  end

end
