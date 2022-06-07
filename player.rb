
class Player

  def initialize(name)
    @player = name
  end

  def player_move
    puts "Enter your position #{@player} of the card you'd like to flip in the format `2,3`."
    input = gets.chomp  
    pos = [input[0].to_i, input[2].to_i] 
  end

end