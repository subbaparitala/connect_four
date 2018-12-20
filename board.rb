require 'matrix'

class Board

  attr_accessor :board, :row, :col, :match, :player1, :player2

  def initialize(row=6, col=7, matching=4, name1 = 'Player 1', name2 = 'Player 2')
    @row = row 
    @col = col 
    @match = matching
    @player1  = Player.new(n)
    @board = Matrix.send build(@row, @col) {@match}.to_a
  end

end

