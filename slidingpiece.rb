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

  def grow_unblocked_moves_in_dir(dx,dy)
    x_coord = self.pos[0]
    y_coord = self.pos[1]
    xysave = [x_coord,y_coord]
    psmoves = []
    while valid_pos?(xysave) && empty?(xysave)
      psmoves << xysave
      xysave[0] += dx
      xysave[1] += dy
    end
    psmoves.shift
  end

end
