require 'colorize'

class Piece

  attr_accessor :color, :position, :char

  def initialize(color, board, position)
    @color = color
    @board = board
    @position = position
  end

  def orthogonal_moves
    x, y = @position
    orthogonal_moves = []

    (-7..7).to_a.each do |d_x|
      (-7..7).to_a.each do |d_y|
         orthogonal_moves << [(x + d_x), (y + d_y)]
      end
    end

    orthogonal_moves
  end

  def diagonal_moves
    x, y = @position
    
    diagonal_moves = []

    (0..7).to_a.each do |delta|
      diagonal_moves << [(x + delta), (y + delta)]
      diagonal_moves << [(x + delta), (y - delta)]
      diagonal_moves << [(x - delta), (y + delta)]
      diagonal_moves << [(x - delta), (y - delta)]
    end

    diagonal_moves
  end

  # def move_into_check?(position)
  #   check_board = @board.dup
  #   in_check?(position)
  # end

end
