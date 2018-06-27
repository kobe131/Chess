require_relative 'Piece'

class Board
  attr_reader :rows

  def initialize()
    make_board
  end

  def make_board

    #back_r = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
    #front_r = [Pawn, Pawn, Pawn, Pawn, Pawn, Pawn, Pawn, Pawn]
      @rows = Array.new(8) { Array.new(8) }
      key_index = [0,1,6,7]
      key_index.each do |idx|
        0.upto(7).each do |idx2|
          @rows[idx][idx2] = Piece.new('color',self,'pos')
        end
      end
      nil_index = [2,3,4,5]
      nil_index.each do |idx|
        0.upto(7).each do |idx2|
          @rows[idx][idx2] = NullPiece.instance
        end
      end
  end

  def [](pos)
    #raise 'invalid pos' if !valid_pos?(pos)
    @rows[pos[0]][pos[1]]
  end

  def []=(pos,piece)
    #raise 'invalid pos' if !valid_pos?(pos)
    @rows[pos[0]][pos[1]] = piece
  end

  def move_piece(color,start_pos,end_pos)
    raise 'start position is empty' if empty?(start_pos)#check if the position on the board is empty
    raise 'cant move to end_pos' if !empty?(end_pos)
    raise 'index out of bounds' if !valid_pos?(start_pos) || !valid_pos?(end_pos)
    self[start_pos] = NullPiece.instance
    self[end_pos] = Piece.new(color,self,end_pos)
  end

  def empty?(pos)
    #this function is for checking if the position on the board is Nullpiece
    self[pos].is_a?(NullPiece)
  end

  def valid_pos?(pos)
    pos[0].between?(0,7) && pos[1].between?(0,7)
  end

  def add_piece(piece,pos)

  end

  def checkmate?(color)

  end

  def in_check?(color)


  end

  def find_king(color)


  end

  def pieces


  end


  def dup

  end

  def move_piece!(color,start_pos,end_pos)


  end


end
