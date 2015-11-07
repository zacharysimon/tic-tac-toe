class Game_board

  def initialize
    @top = ["~", "|", "~", "|", "~"]
    @up_line = ["_", "_", "_", "_", "_"]
    @middle = ["~", "|", "~", "|", "~"]
    @down_line = ["_", "_", "_", "_", "_"]
    @bottom = ["~", "|", "~", "|", "~"]
  end

  def show_fresh_game
    @top
    @up_line
    @middle
    @down_line
    @bottom
  end
end