class Card
  attr_reader :face_up, :face_value

  def initialize(face_value, face_up = false)
    @face_value = face_value
    @face_up = face_up
  end

  def hide
    @face_up = false
  end

  def reveal
    @face_up = true
  end

  def to_s
    @face_value.to_s
  end

  def ==(card1, card2)
    card1.to_s == card2.to_s
  end
end
