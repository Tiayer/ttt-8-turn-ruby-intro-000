board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == true
    return false
  elsif index.between?(0, 8) == true
    return true
  end
end

def position_taken?(board, index)
  if board[index] == " " ||
    board[index] == "" ||
    board[index] == nil
    return false
  elsif board[index] == "X" ||
    board[index] == "O"
    return true
  end
end

def turn(board)
puts "Please enter 1-9:"
user_input = gets.strip
input_to_index(user_input)

if valid_move?(board, input_to_index(user_input)) == true
  move(board, input_to_index(user)input))
else
  user_input = gets.strip
  input_to_index(user_input)
end
end
