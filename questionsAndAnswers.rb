require 'rest-client'
require 'json'
require 'htmlentities'

	@end_game = false
# Using restClient takes external api and inports it, where the JSON then parses it to readable language 
def get_questions 
	questions_raw = RestClient.get("https://opentdb.com/api.php?amount=50&difficulty=easy&type=multiple")
	JSON.parse(questions_raw)['results']
end

# Overall method for the game to run 
def run_game
	questions_array = Array.new(get_questions)
# An array was created for scores so we were able to easily implement a scoring system
	scores = ["$0", "$100", "$200", "$300", "$500", "$1,000", "$2,000", "$4,000", "$8,000", "$16,000", "$32,000", "$64,000", "$125,000", "$250,000", "$500,000", "$1,000,000"]
	round = 1
	i = 0

	# Maximum no.questions of 50 in JSON file, while loop generates 10 questions
	while questions_array.length > 40    
# Setting variables for the game by inporting them from the JSON file which is being accessed within the methods 				
		current_question = get_question(questions_array)
		answer_choices = get_answers(current_question)     

# This is referencing a method which pases in it's 'variables'
		play(round, current_question, answer_choices, scores)

		user_input = gets.chomp.downcase 
		round += 1

		if user_input.downcase == 'exit' || user_input.downcase == 'quit' || user_input.downcase == 'stop' || user_input.downcase == 'leave'
			puts "Okay, goodbye!"
			return
		end

# Sets a variable which looks for the correct answer compared to the question in the JSON file 
		correct_answer = current_question['correct_answer']

		if user_input == correct_answer.downcase
			sleep(1)
			puts "\nThat's correct!"
			i += 1
			score = scores[i] 
			sleep(1.5)
			puts "Your current winnings are #{score}!"
			sleep(2)
		else
			sleep(1)
			puts "\nThat's incorrect"
			score = scores[i] 
			sleep(2)
			puts "The correct answer was #{correct_answer}"
			sleep(2)
			puts "\nYour current winnings are #{score}!"
			sleep(2.5)
		end
# Deletes the question after being asked (no repeated questions)
		questions_array.delete(current_question)

		if questions_array.length == 40
			game_over
			puts "\nYou collected #{score}!"
		end
	end
end
#selects questions randomly from the JSON file, instead of its order
def get_question(questions)
    i = rand(questions.length)
    question = questions[i]
end

def get_answers(question)
    choices = Array.new(question['incorrect_answers'])
    i = rand(choices.length)
    choices.insert(i, question['correct_answer'])
end

def play(round, question, answers, scores)
	system "clear"
# Require HTMLEntities to convert html unicode/characters that would appear
	puts HTMLEntities.new.decode("The category is: #{question['category']}")
	puts HTMLEntities.new.decode("\n#{round}. #{question['question']}")
	answers.each { |answer| puts HTMLEntities.new.decode("- #{answer}") }
	puts "\nPlease type your answer!"
end

def game_over
	@end_game = true
	puts "\nGame Over!"
end







