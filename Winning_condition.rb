require_relative "game.rb"

class Winning_condition # creates class with methods to check for a winner 
  attr_reader :winner

  def initialize
    @winner = false 
    @player_turn_tracker = 1 # used to alternate shovelling the move into each player's array
    @player1_columns = []
    @player1_rows =[]
    @player2_columns = []
    @player2_rows = []
    @player1_moves = []
    @player2_moves = []
  end

  def check(move)
    @player1_column_counter = Hash.new(0)
    @player1_row_counter = Hash.new(0)
    @player2_column_counter = Hash.new(0)
    @player2_row_counter = Hash.new(0)


    if @player_turn_tracker%2 == 0
      
      @player1_columns << move.split("")[0]
      @player1_columns.each do |column| 
        @player1_column_counter[column] += 1
      end

      @player1_rows << move.split("")[1]
      @player1_rows.each do |row| 
        @player1_row_counter[row] += 1
      end

      @player1_moves << move
      if @player1_moves.include?("mm")
        if @player1_moves.include?("rt") and @player1_moves.include?("lb")
          @winner = true
        elsif @player1_moves.include?("lt") and @player1_moves.include?("rb")
          @winner = true
        end
      end

      if @player1_row_counter.value?(3) or @player1_column_counter.value?(3)
        @winner = true  
      end
      

    else
    
      @player2_columns << move.split("")[0]
      @player2_columns.each do |column| 
        @player2_column_counter[column] += 1
      end

      @player2_rows << move.split("")[1]
      @player2_rows.each do |row| 
        @player2_row_counter[row] += 1
      end

      @player2_moves << move

      if @player2_moves.include?("mm")
        if @player2_moves.include?("rt") and @player2_moves.include?("lb")
          @winner = true
        elsif @player2_moves.include?("lt") and @player2_moves.include?("rb")
          @winner = true
        end
      end

      if @player2_row_counter.value?(3) or @player2_column_counter.value?(3)
        @winner = true  
      end

    end

    @player_turn_tracker +=1

  end
    

end
