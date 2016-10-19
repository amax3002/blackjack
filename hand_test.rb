require 'minitest/autorun'
require "minitest/pride"
require_relative './hand'

class HandTest <Minitest::Test

  def test_hand_value
    dealt_cards = [Card.new("2", "Spades"), Card.new("A", "Spades")]
    hand = Hand.new(dealt_cards)
    assert_equal hand.value, 13
  end

  def test_hand_card_front_not_a_number
    dealt_cards = [Card.new("2", "Spades"), Card.new("A", "Spades")]
    hand = Hand.new(dealt_cards)
    assert_equal hand.show_card_face, ["2", "A"]
  end

end
