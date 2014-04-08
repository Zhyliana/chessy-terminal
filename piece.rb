class Piece

  def initialize(color, board, position)
    @color = color
    @board = board
    @position = position
  end

  def moves
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

end

class SlidingPiece < Piece

  def initialize(color, board, position)
    super
  end

end

class Bishop < SlidingPiece

  def initialize(color, board, position)
    super
  end

  def moves
    diagonal_moves
  end

end

class Rook < SlidingPiece

  def initialize(color, board, position)
    super
  end

  def moves
    orthogonal_moves
  end

end

class Queen < SlidingPiece

  def initialize(color, board, position)
    super
  end

  def moves
    diagonal_moves + orthogonal_moves
  end

end

class SteppingPiece < Piece

  def initialize(color, board, position)
    super
  end

end

class King < SteppingPiece

  def initialize(color, board, position)
    super
  end

end

class Knight < SteppingPiece

  def initialize(color, board, position)
    super
  end

end

class Pawn < Piece

  def initialize(color, board, position)
    super
  end

end