require_relative 'Piece'
require_relative 'slidingpiece'

class bishop < Piece
  include slidingpiece

  def move_dirs 
    DIAGONAL
  end













end
