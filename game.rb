require 'matrix'

class Board

  attr_accessor :board, :row, :col, :match 

  def initialize(row=6, col=7, matching=4)
    @row = row 
    @col = col 
    @match = matching
    @board = Matrix.send new(@row, @col) {@match}.to_a
  end

end

a = Board.new

a[0][0]
