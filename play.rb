require_relative './card'
require_relative './deck'
require_relative './hand'
require_relative './blackjack'

do_you_want_to_play = ""
i = 1

while do_you_want_to_play == "Yes" || do_you_want_to_play == ""
puts ''
puts "_________________This Game #{i}_________________"
game = Blackjack.new

puts game.play_blackjack

puts "Do you want to play again (Yes or No)?"
do_you_want_to_play  = gets.chomp.capitalize
i = i +1
end
puts ''
puts 'Quiter :('
