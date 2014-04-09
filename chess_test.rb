['piece.rb', 'sliding_piece.rb', 'stepping_piece.rb', 'pawn.rb'].each do |file|
  require_relative file
end

b = Board.new

q = Queen.new("white", b, [4, 4])

k = Knight.new("black", b, [4, 4])

r = Rook.new("black", b, [4,4])

<<<<<<< HEAD
=======
p r.moves
>>>>>>> 5313fa6d83a6c5e647181c84a5b70fa37d6e8389
