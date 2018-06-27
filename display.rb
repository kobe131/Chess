require "colorize"
require_relative 'cursor'
class Display

  attr_accessor :board


  def initialize(board)
    @board = board

  end

  def render
      @board.rows.each do |element1|
        element1.each do |element2|
          element2.to_s
        end
        puts()
      end
  end

end
