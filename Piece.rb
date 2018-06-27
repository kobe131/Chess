require 'singleton'
class Piece

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos

  end

  def to_s
    if self.empty?
      print("_")
    else
      print("X")
    end
  end

  def empty?
    self.is_a?(NullPiece)
  end

  def valid_moves


  end

  def pos=(val)


  end

  def symbol

  end

  def move_into_check?(end_pos)



  end
end

class NullPiece < Piece
  include Singleton
  #self.instance
  def initialize
    @color = nil
    # @board = nil
    # @pos = nil
  end

  def to_s
    print("_")
  end

end
