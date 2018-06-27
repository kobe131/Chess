require_relative 'Piece'
require_relative 'slidingpiece'

class rook < Piece
  include slidingpiece

  def move_dirs
    HORIZONTAL
  end










end
