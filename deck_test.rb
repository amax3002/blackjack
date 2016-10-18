require 'minitest/autorun'
require "minitest/pride"
require_relative './deck'

class DeckTest <Minitest::Test
  def test_deck_of_size
    new_deck = Deck.new
    deck_size = new_deck.cards.size
    assert_equal deck_size, 52
  end

  def test_deal_cards
    new_deck = Deck.new
    first_hand = new_deck.cards[0].turns_into_int + new_deck.cards[1].turns_into_int
    assert first_hand <= 22
  end

  def test_suits_counter
    new_deck = Deck.new

    new_deck.cards.count("Spades")
    count = new_deck.cards.count do |card|
      card.suits == "Spades"
    end

    # counts = new_deck.suits.inject(Hash.new(0)) do |collection, value|
    #   collection[value] +=1
    #   collection
    # end
    assert_equal count, 13
  end

end