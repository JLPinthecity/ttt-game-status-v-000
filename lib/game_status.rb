# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =

[
[0, 1, 2],
[3, 4, 5],
[6, 7, 8],

[0, 3, 6],
[1, 4, 7],
[2, 5, 8],

[0, 4, 8],
[2, 4, 6]
]

def won?(board)

  WIN_COMBINATIONS.detect do |row|
    board[row[0]] == board[row[1]] &&
    board[row[1]] == board[row[2]] &&
    position_taken?(board, row[0])
  end
end


#return false/nil if there is no winning combo present
#return winning combination indexes as an array if there is a win

def full?(board)
   board.any? do |index|
     index == " "
   end
end
