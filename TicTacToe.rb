# 1. Bisogna comprendere le specifiche del programma, capire la portata del programma
# 2. Quindi serve la logica dell'applicazione, la sequenza di azioni che vanno prese
# 3. Quindi tradurre questi passi in codice
# 4. Testare il programma per verificare la logica

# Passaggi
# 1. Draw a board

# 2. Assign Player "X" e Computer "O"

# 3. Loop until a winner or all squares are taken
# 4.  Player picks a empty square
# 5.  Check for winner
# 6.  Computer picks a empty square
# 7.  Check for winner

# 8. If there is a winner
# 9. show the winner
# 10. or else
# 11. It's a tie

require "pry"


def initialize_board
  board = {}
  (1..9).each {|position| board[position] = " "}
  board
end

def empty_position(board)
  board.keys.select {|position| board[position] == ' '}
end

def player_picks_square(board)
  begin
    puts "Pick a square (1 - 9):"
    position = gets.chomp.to_i
  end until empty_position(board).include?(position)
  board[position] = "X"
end

def computer_picks_square(board)
  if board.values.count("O") == 2
   position = board.select{|k,v| v == ' '}.keys.first
   board[position] = "O"
  else
    position = empty_position(board).sample
    board[position] = "O"
  end
end

def check_winner(board)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  winning_lines.each do |line|
    return "Player" if board.values_at(*line).count('X') == 3
    return "Computer" if board.values_at(*line).count('O') == 3
  end
  nil
end

def draw_board(b)
  system "clear"

  puts " #{b[1]} | #{b[2]} | #{b[3]} "
  puts " - - - - - "
  puts " #{b[4]} | #{b[5]} | #{b[6]} "
  puts " - - - - - "
  puts " #{b[7]} | #{b[8]} | #{b[9]} "

end


def check_winner(board)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  winning_lines.each do |line|
    return "Player" if board.values_at(*line).count("X") == 3
    return "Computer" if board.values_at(*line).count("O") == 3
  end
    nil
end

board = initialize_board
draw_board(board)

begin
  player_picks_square(board)  
  computer_picks_square(board)
  draw_board(board)
  winner = check_winner(board)
end until winner || empty_position(board).empty?

if winner
  puts "#{winner} won!"
else
  puts "It's a tie!"
end
