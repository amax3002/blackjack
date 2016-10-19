require 'minitest/autorun'
require "minitest/pride"
require_relative './blackjack'
require_relative './hand'
require_relative './card'
require_relative './player'


class PlayerTest <Minitest::Test

  def test_show_value
    dealt_cards = [Card.new("2", "Spades"), Card.new("A", "Spades")]
    hand = Player.new(Hand.new(dealt_cards))
    assert_equal hand, 13

  end



end
