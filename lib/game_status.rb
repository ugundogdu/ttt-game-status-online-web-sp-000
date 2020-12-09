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
  return false if board == [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

  WIN_COMBINATIONS.each do|item|
    spots = [board[item[0]], board[item[1]], board[item[2]]] # spots ornek: ['X', ' ', 'O']

    next if spots.include?(' ')

    
  end

  false
end
