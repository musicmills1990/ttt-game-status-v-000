# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    position_1 = board[win_combination[0]]
    position_2 = board[win_combination[1]]
    position_3 = board[win_combination[2]]
    position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
  end
end

def full?(board)
  board.all? do |space|
    space == "X" || space == "O"
  end
end

def draw?(board)
  full?(board) && !(won?(board))
end


def over?(board)
  won?(board) || draw?(board)
end

def winner(board)

if won?(board) && board[won?(board)[0]] == "X" && board[won?(board)[1]] == "X" && board[won?(board)[2]] == "X"
    "X"
elsif won?(board) && board[won?(board)[0]] == "O" && board[won?(board)[1]] == "O" && board[won?(board)[2]] == "O"
  "O"
  end
end
