class Card
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card?
    ['J', 'Q', 'K'].include?(@rank)
  end

  def ace?
    ['A'].include?(@rank)
  end

  def value
    if self.face_card?
      10
    elsif self.ace?
      11
    else
      self.rank.to_i
    end
  end

  def rank
    @rank
  end

  def suit
    @suit
  end
end
