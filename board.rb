require_relative 'chess_pieces.rb'

class Board

  attr_accessor :grid

  def initialize
    @grid = Array.new(8) { Array.new(8) }
    @board = self
    load_board
  end

  def in_check?(color)
  
    @grid.each do |row|
      row.each do |tile|
        if tile.is_a?(King) && tile.color == color
         return tile.position
        end
      end
    end
  
    #returns position of king of given color
  
  end

  def load_board
    @grid[0] = make_white_pieces
    @grid[1] = make_white_pawns
    @grid[6] = make_black_pawns
    @grid[7] = make_black_pieces
  end

  def make_white_pieces
    white_pieces = [
      Rook.new("White", @board, [0, 0]),
      Knight.new("White", @board, [1, 0]),
      Bishop.new("White", @board, [2, 0]),
      Queen.new("White", @board, [3, 0]),
      King.new("White", @board, [4, 0]),
      Bishop.new("White", @board, [5, 0]),
      Knight.new("White", @board, [6, 0]),
      Rook.new("White", @board, [7, 0])
    ]

    white_pieces
  end

  def make_white_pawns
    white_pawns = (0..7).map do |x_axis|
      Pawn.new("White", @board, [x_axis, 1])
    end
  end

  def make_black_pieces
    [
      Rook.new("Black", @board, [0, 7]),
      Knight.new("Black", @board, [1, 7]),
      Bishop.new("Black", @board, [2, 7]),
      Queen.new("Black", @board, [3, 7]),
      King.new("Black", @board, [4, 7]),
      Bishop.new("Black", @board, [5, 7]),
      Knight.new("Black", @board, [6, 7]),
      Rook.new("Black", @board, [7, 7])
    ]
  end

  def make_black_pawns
    (0..7).map do |x_axis|
      Pawn.new("Black", @board, [x_axis, 6])
    end
  end

  def colorize(tile, x_axis, y_axis)
    if (y_axis.even? && x_axis.even?) || (y_axis.odd? && x_axis.odd?)

      if tile.nil?
        print "   ".on_light_black
      elsif tile.color == "Black"
        print " #{tile.char} ".black.on_light_black
      else
        print " #{tile.char} ".light_white.on_light_black
      end

    else
      if tile.nil?
        print "   ".on_white
      elsif tile.color == "Black"
        print " #{tile.char} ".black.on_white
      else
        print " #{tile.char} ".light_white.on_white
      end
    end

  end

  def render
    @grid.reverse_each.with_index do |row, y_axis|
      print "\n"
      print "#{(y_axis-8).abs} ".light_white

      row.each_with_index do |tile, x_axis|
        colorize(tile, x_axis, y_axis)
      end

    end

    print "\n"
    print "   a  b  c  d  e  f  g  h  ".light_white
  end

end


Board.new.render



