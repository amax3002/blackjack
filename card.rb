
class Card

  SUITS = {
    spades: "Spades",      # => "Spades"
    hearts: "Hearts",      # => "Hearts"
    diamonds: "Diamonds",  # => "Diamonds"
    clubs:  "Clubs"        # => "Clubs"
  }                        # => {:spades=>"Spades", :hearts=>"Hearts", :diamonds=>"Diamonds", :clubs=>"Clubs"}

  attr_accessor :number, :suits  # => nil

  def initialize (number, suits)
    @number = number              # => "10"
    @suits = suits                # => "Spades"
  end                             # => :initialize

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
  end                             # => :turns_into_int
end                               # => :turns_into_int

Card.new("10", "Spades")  # => #<Card:0x007fc02181fe50 @number="10", @suits="Spades">
