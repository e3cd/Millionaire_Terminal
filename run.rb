require_relative 'game_models'
require_relative 'questionsAndAnswers'
system "clear"
if initiate.downcase == 'Y'.downcase
    puts "Alright let's do this!"
    run_game
else
    puts "Maybe another time, then. Goodbye."
end