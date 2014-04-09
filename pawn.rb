require_relative 'piece.rb'

class Pawn < Piece

  def initialize(color, board, position)
    super
    @char = "\u265F"
  end

  def moves
    valid_moves = []
    if self.color = "White"
      valid_moves << [self.position[0], (self.position[1] + 1)]
      
      if self.position[0] == 1
        valid_moves << [self.position[0], (self.position[1] + 2)]
      end
      
    end

    if self.color = "Black"
      valid_moves << [self.position[0], (self.position[1] - 1)]
      
      if self.position[0] == 6
        valid_moves << [self.position[0], (self.position[1] - 2)]
      end
      
    end
  
    valid_moves << attack_moves
  end

  def attack_moves
    y,x = @position
    valid_moves = []

    if @board.grid[y + 1][x + 1].color == !self.color
      [self.position[y + 1], (self.position[x + 1])]
    end

    if @board.grid[y + 1][x - 1].color == !self.color
      #correct coordinate order???
      [self.position[y + 1], (self.position[x - 1])]
    end

    valid_moves
  end
  
end

