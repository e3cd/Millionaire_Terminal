# Importing fiels so that we can initialize the game from this file
require_relative 'game_models'
require_relative 'questionsAndAnswers'

system "clear"
if initiate.downcase == 'Y'.downcase
    puts "Alright let's do this!"
# Takes the method from questionsAndAnswers 
    run_game
else
    puts "Maybe another time, then. Goodbye."
end