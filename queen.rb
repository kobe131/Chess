require_relative 'Piece'
require_relative 'slidingpiece'

class queen < Piece
  include slidingpiece

  def move_dirs
    DIAGONAL+HORIZONTAL
  end









end
