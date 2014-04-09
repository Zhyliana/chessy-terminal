require_relative 'sliding_piece.rb'

class Rook < SlidingPiece

  def initialize(color, board, position)
    super
    @char = "\u265C"
  end

  def moves
    orthogonal_moves = valid_ortho_moves
  end

end