require_relative './card'

class Deck
  NUMBER = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  SUITS = ["Spades", "Hearts", "Diamonds", "Clubs"]
  attr_accessor :cards

  def initialize
    @cards = create_cards.shuffle
  end

  def create_cards
    set_of_cards = []
    SUITS.each do |suit|
      NUMBER.each do |i|
        set_of_cards << Card.new(i, suit)
      end
    end
    set_of_cards
  end
end


t = Deck.new
t
