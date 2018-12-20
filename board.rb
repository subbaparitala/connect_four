require 'matrix'

class Board

  attr_accessor :board, :row, :col, :match, :player1, :player2, :turn_number, :options

  def initialize(row=6, col=7, matching=4)
    @row = row 
    @col = col 
    @match = matching
    @player1  = Player.new(name1, 'R')
    @player2 = Player.new(name2, 'Y')
    @board = Matrix.build(@row, @col) {'.'}.to_a
  end

  def fill_space column, sign
    @row.times do |fill|
      row = @row - 1 - fill 

      if self[column, row] == "."
        self[column, row] = sign
        break
      end

    end
  end

end

