require_relative "game.rb"
require_relative "Winning_condition.rb"


game = Game.new # game is an instance of the Game_board class


puts "Welcome to Tic-tac-toe. To make a move, type in the column and row you want to mark."
puts "So, to mark the middle column and middle row, type 'mm'"
puts "To mark the bottom right corner, type 'rb'"
puts "Or, for the top left corner type 'lt'"

game.show_game(" ")

while game.winning_condition.winner != true
  
  puts ""
  puts "player 1, make your move!"
  input_player1_move = gets.chomp
  if game.check_if_new_move(input_player1_move) # this method checks if the move has been made before 
    input_player1_move.split("")
    game.player1_move(input_player1_move[0],input_player1_move[1])
  end
  game.show_game(input_player1_move)

  if game.winning_condition.winner != true
    puts ""
    puts "player 2, make your move!"
    input_player2_move = gets.chomp
    if game.check_if_new_move(input_player2_move)
      input_player2_move.split("")
      game.player2_move(input_player2_move[0], input_player2_move[1])
    end
    game.show_game(input_player2_move)
  end

end

puts "Way to play #{game.check_winner}!"
