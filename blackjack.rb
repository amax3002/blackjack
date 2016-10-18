require_relative './card'
require_relative './deck'

class Blackjack

  attr_accessor :deck

  def initialize
    @deck = Deck.new
  end

  def setup
    players_hand = []
    dealers_hand = []

    players_hand << deck.deal_card
    dealers_hand << deck.deal_card
    players_hand << deck.deal_card
    dealers_hand << deck.deal_card


  end
end
