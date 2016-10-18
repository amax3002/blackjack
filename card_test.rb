require 'minitest/autorun'
require "minitest/pride"
require_relative './card'

class CardTest <Minitest::Test


  def test_deck_of_cards
    deck = Card.new("A", "Spade")
    assert_equal deck.number, "A"
  end

  def test_deck_of_cards2
    deck = Card.new("A", "Spade")
    assert_equal deck.suits, "Spade"
  end

end
