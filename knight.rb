require_relative 'stepping_piece.rb'

class Knight < SteppingPiece

  def initialize(color, board, position)
    super
    @char = "\u265E"
  end

  def moves
    knight_changes = [[1, 2], [-1, -2], [1, -2], [-1, 2],
                      [2, 1], [2, -1], [-2, 1], [-2, -1]]

    knight_changes.map do |move_pos|
      new_x, new_y = move_pos
      cur_x, cur_y = @position
      new_position = [(new_x + cur_x), (new_y + cur_y)]

      new_position if valid_move?(new_position)
    end
  end

  def valid_move?(new_position)
    x, y = new_position
    return true if @board.grid[y][x].nil? || @board.grid[y][x].color != self.color
    false
  end

end