require 'minitest/autorun'
require "minitest/pride"
require_relative './blackjack'

class BlackjackTest <Minitest::Test


  def test_first_card
    result = Blackjack.new
    result2 = result.setup
    assert_equal result.deck.cards.size, 14
  end


end
