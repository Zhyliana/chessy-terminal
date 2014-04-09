require_relative 'sliding_piece.rb'

class Queen < SlidingPiece

  def initialize(color, board, position)
    super
    @char = "\u265B"
  end

  def moves
    moves = valid_diag_moves + valid_ortho_moves
  end

end
