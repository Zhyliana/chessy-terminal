require_relative 'stepping_piece.rb'

class King < SteppingPiece

  def initialize(color, board, position)
    super
    @char = "\u265A"
  end

  def moves
    (diagonal_moves + orthogonal_moves).select do |move_pos|
      new_x, new_y = move_pos
      cur_x, cur_y = @position

      next if move_pos == @position
      (new_x - cur_x).between?(-1, 1) && (new_y - cur_y).between?(-1, 1)
    end.uniq
  end

end