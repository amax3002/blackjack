require 'minitest/autorun'
require "minitest/pride"
require_relative './blackjack'
require_relative './hand'
require_relative './card'

class BlackjackTest <Minitest::Test


  # def test_deal_inital_cards
  #   game = Blackjack.new
  #   game.setup
  #   assert_equal game.players_hand.value, 20
  #   assert_equal game.dealers_hand.value, 20
  # end
  #
  # def test_players_gets_third_cards
  #   game = Blackjack.new
  #   game.setup
  #   game.deal_card_to_player
  #   assert_equal game.players_hand.value, 3
  # end

  # def test_hit_or_stand
  #   game = Blackjack.new
  #   game.setup
  #   game.hit_or_stand("Hit")
  #   assert_equal game.players_hand, 22
  # end

  def test_running_the_game
    game = Blackjack.new
    game.setup
    game.run_the_game("Hit")
    assert_equal game.players_hand, 22
  end

end
