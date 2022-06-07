require_relative "card.rb"

class Board

    def initialize
      @grid = Array.new(4) {Array.new()}
    end

    def shuffled_deck
      deck = []
      face_values = ["A", "B", "C", "D", "E", "F", "G", "H"]
      2.times do
        face_values.each do |face|
          deck << Card.new(face, false)
        end
      end
      deck.shuffle
    end

    def populate
      deck = self.shuffled_deck

      4.times do
        @grid.each do |row|
            row << deck.pop
        end
      end
    end

    def render
      @grid.each do |row|
        p row.join(" ")
      end
    end

    def won?
      return @grid.flatten.all? { |card| card.card_status }
    end

    def [](pos) 
      row, col = pos
      @grid[row][col]
    end

    def reveal(pos)
      row, col = pos
      self[pos].reveal
    end

    # def cheat
    #   @grid.flatten.each { |card| card.reveal }
    # end


    
    
    
end