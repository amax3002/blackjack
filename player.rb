require_relative './card'
require_relative './deck'
require_relative './hand'

class Player

  attr_accessor :hand

  def initialize(cards)
    @hand = cards
  end

  def ask

  end

end
