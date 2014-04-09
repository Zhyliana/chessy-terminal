def up_move?(cur_position, new_position)
  cur_x, cur_y = cur_position
  new_x, new_y = new_position
  false unless cur_y - new_y < 0
end

def down_move?(cur_position, new_position)
  cur_x, cur_y = cur_position
  new_x, new_y = new_position
  false unless cur_y - new_y > 0
end

def left_move?(cur_position, new_position)
  cur_x, cur_y = cur_position
  new_x, new_y = new_position
  false unless cur_x - new_x < 0
end

def right_move?(cur_position, new_position)
  cur_x, cur_y = cur_position
  new_x, new_y = new_position
  false unless cur_x - new_x > 0
end

def vertical_move?(cur_position, new_position)
  cur_x, cur_y = cur_position
  new_x, new_y = new_position
  false unless cur_x == new_x
end

def horizontal_move?(cur_position, new_position)
  cur_x, cur_y = cur_position
  new_x, new_y = new_position
  false unless cur_y == new_y
end

def valid_moves(cur_position)
  cur_x, cur_y = cur_position

  valid_moves = []

  d_x = 1 if right_move?(cur_position, new_position)
  d_x = -1 if left_move?(cur_position, new_position)
  d_y = 1 if up_move?(cur_position, new_position)
  d_y = -1 if down_move?(cur_position, new_position)