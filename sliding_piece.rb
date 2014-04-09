require_relative 'piece.rb'

class SlidingPiece < Piece

  def initialize(color, board, position)
    super
  end

  def explore_path(position, d_x, d_y)
    valid_path = []
    x, y = position

    until (!(y + d_y).between?(0, 7) || !(x + d_x).between?(0, 7)) #||
        #@board.grid[y + d_y][x + d_x].color == self.color

      valid_path << [(x + d_x), (y + d_y)]

      x += d_x
      y += d_y
    end
    valid_path
  end

  def valid_ortho_moves
    directions = [[0, 1], [0, -1], [1, 0], [-1, 0]]

    valid_ortho_moves = []

    directions.each do |direction|
      d_x, d_y = direction
      valid_ortho_moves += explore_path(@position, d_x, d_y)
    end

    valid_ortho_moves
  end

  def valid_diag_moves
    directions = [[1, 1], [-1, -1], [1, -1], [-1, 1]]

    valid_diag_moves = []

    directions.each do |direction|
      d_x, d_y = direction
      valid_diag_moves += explore_path(@position, d_x, d_y)
    end

    valid_diag_moves
  end

end
