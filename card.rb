
class Card

  SUITS = {
    spades: "Spades",
    hearts: "Hearts",
    diamonds: "Diamonds",
    clubs:  "Clubs"
  }

  attr_accessor :number, :suits

  def initialize (number, suits)
    @number = number
    @suits = suits
  end

  def turns_into_int
    choice = self.number
    case choice
    when "J","Q","K","j","q","k"
      return 10
    when "A","a"
      return 11
    else
      return choice.to_i
    end
  end

  def card_face
    choice = self.number
  end
end
