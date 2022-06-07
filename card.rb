
class Card

  def initialize(value, face_up)
    @value = value
    @face_up = false
  end

  def card_check
    return true if @face_up == true
  end

  def card_status
    @face_up
  end
  
  def hide
    @face_up = false
  end

  def reveal
    @face_up = true
    return @value
  end

  def to_s
    @value.to_s
  end

  def ==(other_card)
    return true if self.reveal == other_card.reveal

    false
  end



end 