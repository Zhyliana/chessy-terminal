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
<<<<<<< HEAD
      
      if self.position[0] == 1
        valid_moves << [self.position[0], (self.position[1] + 2)]
      end
      
=======
       #{symbol}+ 1)]
      #add attack
      if self.position[0] == 1
        valid_moves << [self.position[0], (self.position[1] + 2)]
      end
>>>>>>> 5313fa6d83a6c5e647181c84a5b70fa37d6e8389
    end

    if self.color = "Black"
      valid_moves << [self.position[0], (self.position[1] - 1)]
<<<<<<< HEAD
      
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

=======
      if self.position[0] == 6
        valid_moves << [self.position[0], (self.position[1] - 2)]
      end
    end

  end
end

      # if self.position[0] == 1 && no enemies nearby
#         valid_moves << [self.position[0], (self.position[1]+2)]
#         valid_moves << [self.position[0], (self.position[1]+1)]
#       elsif
#
#       end
#     end
#
#
#
#     if
#     elsif self.position[0] == 6 && self.color = "Black"
#       valid_moves << [self.position[0], (self.position[1]-2)]
#       valid_moves << [self.position[0], (self.position[1]-1)]
#     else
#       valid_moves << [self.position[0], (self.position[1]-)]
#     end
#   end
#
#   #if poson diagonal has a piece of opposite color, then valid move
#   # if starting from y axis 6 or y axis 1 (dep on color), then +2 for whites or -2 for blacks
#   # otherwise then +1 for whites or -1 for blacks
# end
>>>>>>> 5313fa6d83a6c5e647181c84a5b70fa37d6e8389
