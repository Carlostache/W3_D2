require_relative "board.rb"
require_relative "player.rb"

class Game

  def initialize
    @board = Board.new
    @board.populate
    @previous_guess = nil
  end

  def make_guess(previous)
      pos2 = player_move
      prev_face = @board.reveal(previous)
      current_face = @board.reveal(pos2)
      if prev_face != current_face
        @board[previous].hide
        @board[pos2].hide
      end
      @previous_guess = nil
  end
  
  def play

    unless @board.won? 
      @board.render
      @previous_guess = player_move
      make_guess(@previous_guess)
    end
  end
  
  
  
  
  
  
  
end