require_relative './card'
require_relative './deck'
require_relative './hand'

class Blackjack

  attr_accessor :deck, :players_hand, :dealers_hand

  def initialize
    @deck = Deck.new
  end

  def setup
    players_cards = []
    dealers_cards = []

    players_cards << deck.deal_card
    dealers_cards << deck.deal_card

    players_cards << deck.deal_card
    dealers_cards << deck.deal_card

    @players_hand = Hand.new(players_cards)
    @dealers_hand = Hand.new(dealers_cards)
  end


  def deal_card_to_player
    @players_hand.cards.push deck.deal_card
  end

  def deal_card_to_dealer
    @dealers_hand.cards.push deck.deal_card
  end

  # def hit_or_stand(choice)
  #   # Choice will be user input
  #   if choice == "Hit" || "hit"
  #     deal_card_to_player
  #   end
  # end

  def blackjack
    if @players_hand.value == 21
      puts "BLACKJACK!!!!"
      exit
    end
  end

  def end_game
    if @dealers_hand.value == 21
      "Dealer's Blackjack"
    elsif @dealers_hand.value > 21
      "Dealer Busted, you WIN!"
    elsif @players_hand.value > @dealers_hand.value && @players_hand.value < 22
      "You Won!"
    else
      "Dealer won :("
    end
  end



  def run_the_game

    choice = ""
    setup

    puts "Your hand is: #{players_hand.show_card_face_for_messages} which is equal to: #{players_hand.value}"
    puts "The dealer's face-up card is: #{dealers_hand.show_card_face[0]}"

    puts blackjack

    while choice != "Stand"

      puts "Hit or Stand?"
      choice = gets.chomp

      break if choice == "Stand" || choice == "stand" || choice == "s" || choice == "Stay" || choice == "stay"

      deal_card_to_player

      break if @players_hand.value >= 22
      puts "Your hand is: #{players_hand.show_card_face_for_messages} which is equal to: #{players_hand.value}"

    end

    puts "Your hand is: #{players_hand.show_card_face_for_messages} which is equal to: #{players_hand.value}"

    if @players_hand.value > 21
      puts "Busted"
    else
      until dealers_hand.value >= 17
        deal_card_to_dealer
      end
      puts "The dealers hand is: #{dealers_hand.show_card_face_for_messages} which is equal to: #{dealers_hand.value}"
    end

    puts ''
    puts end_game

  end

end

game = Blackjack.new

puts game.run_the_game
