def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
<<<<<<< HEAD
  input = gets.strip
  index = input_to_index(input)
  if(valid_move?(board, index))
    move(board, index)
    display_board(board)
    #turn(board)
=======
  index = gets.strip.to_i - 1
  if index.between?(0, 8)
    if(valid_move?(board, index))
      move(board, index)
      display_board(board)
      turn(board)
    end
>>>>>>> de346c70225006d6d875efc04b1d33defbe24caf
  else
    turn(board)
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
<<<<<<< HEAD
  if((board[index] == " " || board[index] == "" || board[index] == nil) && (index.between?(0, 8)))
=======
  if(board[index] == " " || board[index] == "" || board[index] == nil)
>>>>>>> de346c70225006d6d875efc04b1d33defbe24caf
    return true
  else
    return false
  end
end