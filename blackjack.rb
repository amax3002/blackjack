require_relative './card'
require_relative './deck'
require_relative './hand'

class Blackjack

  STAND = ["Stand", "stand", "s", "Stay", "stay"]

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

  def dealer_blackjack
    @dealers_hand.value == 21
  end

  def player_blackjack
    @players_hand.value == 21
  end

  def end_game
    if @dealers_hand.value > 21
      "Dealer Busted, you WIN!"
    elsif @players_hand.value > @dealers_hand.value && @players_hand.value < 22
      "You Won!"
    else
      "Dealer won :("
    end
  end



  def play_blackjack
    choice = ""
    setup
    puts "Your hand is: #{players_hand.show_card_face_for_messages} which is equal to: #{players_hand.value}"
    puts "The dealer's face-up card is: #{dealers_hand.show_card_face[0]}"

    while choice != "Stand"
      break if dealer_blackjack || player_blackjack

      puts "Hit or Stand?"
      choice = gets.chomp
      break if STAND.include? choice
      deal_card_to_player
      puts "Your hand is: #{players_hand.show_card_face_for_messages} which is equal to: #{players_hand.value}"
      break if @players_hand.value >= 21
    end

    if dealer_blackjack
      puts "Dealer draws Blackjack. You Lose"
    elsif player_blackjack
      puts "BLACKJACK! You Win!!"
    else
      if @players_hand.value > 21
        puts "Busted"
      else
        until dealers_hand.value >= 17
          deal_card_to_dealer
        end
        puts "Your hand is: #{players_hand.show_card_face_for_messages} which is equal to: #{players_hand.value}"
        puts "The dealers hand is: #{dealers_hand.show_card_face_for_messages} which is equal to: #{dealers_hand.value}"
      end
    end
    puts ''
    puts end_game
  end

end
