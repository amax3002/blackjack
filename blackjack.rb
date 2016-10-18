require_relative './card'
require_relative './deck'

class Blackjack

  def play
    deck = Deck.new

    go_from_top_of_deck = -1

    first_card = deck[go_from_top_of_deck += 1].turns_into_int

    dealer_first_card = deck[go_from_top_of_deck += 1].turns_into_int

    second_card = deck[go_from_top_of_deck += 1].turns_into_int

    total_card_value = first_card + second_card
  end
end
