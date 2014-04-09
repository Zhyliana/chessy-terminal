require_relative 'sliding_piece.rb'

class Bishop < SlidingPiece

  def initialize(color, board, position)
    super
    @char = "\u265D"
  end

  def moves
    diagonal_moves = valid_diag_moves
  end

end