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
       #{symbol}+ 1)]
      #add attack
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