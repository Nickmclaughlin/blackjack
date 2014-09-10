require_relative 'card'
require_relative 'deck'
require_relative 'hand'
require 'pry'

SUITS = '♠', '♣', '♥', '♦'
RANKS = 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'

hand = Hand.new


puts "Welcome to Blackjack!"

hand.player_starting_hand
hand.player_score

while true
  if hand.player_score < 21
    puts "Player score: #{hand.player_score}"
    puts "Would you like to hit(h) or stand(any button)?"
    player_input = gets.chomp.downcase
    if player_input == "h"
      hand.hit
      hand.player_score
    else
      puts "Player Score: #{hand.player_score}"
      hand.dealer_starting_hand
      hand.dealer_hit
      hand.outcomes
      break
    end
  elsif hand.player_score == 21
    puts "Player score: #{hand.player_score}"
    puts "Blackjack! You Win!"
    break
  elsif hand.player_score > 21
    puts "Player Score: #{hand.player_score}"
    puts "Player Bust! Dealer Wins."
    break
  end
end
















# while true
#   if hand.player_ace_value < 21
#     puts "Player score: #{hand.player_ace_value}"
#     print "Hit or stand (h/s):"
#     user_input = gets.chomp
#     if user_input == "h"
#         hand.hit
#     else
#       puts "Player score: #{hand.player_ace_value}"
#       hand.dealers_hand
#       hand.compare_score
#       break
#     end
#   elsif hand.player_ace_value == 21
#     puts "Player score: #{hand.player_ace_value}"
#     puts "Blackjack! You win!"
#     break
#   elsif hand.player_ace_value > 21
#     puts "Player score: #{hand.player_ace_value}"
#     puts "Bust! You lose."
#     break
#   end






