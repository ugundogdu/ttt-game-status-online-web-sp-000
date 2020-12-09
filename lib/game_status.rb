# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [0, 4, 8],
  [1, 4, 7],
  [2, 5, 8],
  [2, 4, 6]
]

def won?(board)
  if board == [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    return false
  end

  WIN_COMBINATIONS.each do |item|
    if board[item[0]] == board[item[1]] && board[item[1]] == board[item[2]]
      return item unless board[item[0]] != ' '
    end
  end

  false
end
