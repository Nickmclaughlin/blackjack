class Deck
  def initialize
    @deck = Array.new
    SUITS.each do |suit|
      RANKS.each do |rank|
        @deck << Card.new(rank, suit) #link this with card?
      end
    end
    @deck.shuffle!
  end

  def draw_card
    @deck.pop
  end

  def deck
    @deck
  end
end
