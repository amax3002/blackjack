require_relative './card'
require_relative './deck'

class Hand

  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  # gets value of cards
  def value
    total = 0
    @cards.each do |card|
      total += card.turns_into_int
    end
    total
  end

  #gets face value (shows "A" instead of 11) of cards
  def show_card_face
    total = []
    @cards.each do |card|
      total << card.card_face
    end
    total
  end

  def show_card_face_for_messages
    show_card_face.join(", ")
  end

end
