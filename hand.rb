class Hand
  def initialize
    @deck = Deck.new
    @player_hand = player_hand
  end

  def player_starting_hand
    player_card_1 = @deck.draw_card
    player_card_2 = @deck.draw_card
    @player_hand = []
    @player_hand << player_card_1
    @player_hand << player_card_2
    player_score = player_card_1.value.to_i + player_card_2.value.to_i
    puts "Player was dealt: #{player_card_1.rank}#{player_card_1.suit}"
    puts "Player was dealt: #{player_card_2.rank}#{player_card_2.suit}"
  end

  def dealer_starting_hand
    @dealer_hand = []
    dealer_card_1 = @deck.draw_card
    dealer_card_2 = @deck.draw_card
    @dealer_hand << dealer_card_1
    @dealer_hand << dealer_card_2
    dealer_score = dealer_card_1.value.to_i + dealer_card_2.value.to_i
    puts "Dealer was dealt: #{dealer_card_1.rank}#{dealer_card_1.suit}"
    puts "Dealer was dealt: #{dealer_card_2.rank}#{dealer_card_2.suit}"
  end

  def hit
    card = @deck.draw_card
    @player_hand << card
    puts "Player was dealt: #{card.rank}#{card.suit}"
    card
  end

  def player_score
    score = 0
    @player_hand.each do |card|
      score += card.value
    end
    score
  end

  def dealer_score
    score = 0
    @dealer_hand.each do |card|
      score += card.value
    end
    score
  end

  def outcomes
    if dealer_score == 21
      puts "Dealer Wins!"
    elsif dealer_score > 21
      puts "Dealer has: #{dealer_score}"
      puts "Dealer busts. You Win!"
    elsif player_score > dealer_score
      puts "You win!"
      puts "Player has: #{player_score} vs Dealer has: #{dealer_score}"
    elsif player_score == dealer_score
      puts "It is a push. Player receives their bet back."
      puts "Dealer has: #{dealer_score} = Player has #{player_score}."
    else
      puts "Dealer Wins! Dealer has: #{dealer_score} vs Player has: #{player_score}"
    end
  end

  def dealer_hit
    puts "Dealer has: #{dealer_score}"
    until dealer_score >= 17
      if dealer_score < 17
        card = @deck.draw_card
        @dealer_hand << card
        puts "Dealer was dealt #{card.rank}#{card.suit}"
        card
      else dealer_score > 17
        puts "Dealer has: #{dealer_score}"
      end
    end
  end

  def player_hand
    @player_hand
  end

end

