class Game

  attr_reader :winning_condition

  def initialize
    @top = ["~ ", "|", " ~ ", "|", " ~"]
    @up_line = ["_________"]
    @middle = ["~ ", "|", " ~ ", "|", " ~"]
    @down_line = ["_________"]
    @bottom = ["~ ", "|", " ~ ", "|", " ~"]
    @winning_condition = Winning_condition.new 
    @old_moves = []
  end

  def show_game (input_move)
     puts ""
     puts @top.join
     puts @up_line.join
     puts @middle.join
     puts @down_line.join
     puts @bottom.join
     @winning_condition.check(input_move)
  end

  def check_if_new_move (move)
    if @old_moves.include? move
      puts ""
      puts "that move has been made already! you lose your turn"
      return false
    else
      @old_moves << move
      return true 
    end
  end

  def player1_move(column, row)
    if column.downcase == "l"
      if row.downcase == "t"
        @top[0] = "x "
      elsif row.downcase == "m"
        @middle[0] = "x "
      else 
        @bottom[0] = "x "
      end
    elsif column.downcase == "m"
       if row.downcase == "t"
        @top[2] = " x "
      elsif row.downcase == "m"
        @middle[2] = " x "
      else 
        @bottom[2] = " x "
      end
    elsif column.downcase == "r"
       if row.downcase == "t"
        @top[4] = " x"
      elsif row.downcase == "m"
        @middle[4] = " x"
      else 
        @bottom[4] = " x"
      end
    else 
      puts "enter a valid move"
    end
  end

  def player2_move(column,row)
    if column.downcase == "l"
      if row.downcase == "t"
        @top[0] = "o "
      elsif row.downcase == "m"
        @middle[0] = "o "
      else 
        @bottom[0] = "o "
      end
    elsif column.downcase == "m"
       if row.downcase == "t"
        @top[2] = " o "
      elsif row.downcase == "m"
        @middle[2] = " o "
      else 
        @bottom[2] = " o "
      end
    elsif column.downcase == "r"
       if row.downcase == "t"
        @top[4] = " o"
      elsif row.downcase == "m"
        @middle[4] = " o"
      else 
        @bottom[4] = " o"
      end
    else 
      puts "enter a valid move"
    end
  end

  def check_winner 
    if @winning_condition.player_turn_tracker % 2 == 0
      return "Player 1"
    else return "Player 2"
    end
  end

end