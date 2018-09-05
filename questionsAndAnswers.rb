require 'rest-client'
require 'json'
require 'htmlentities'

	@end_game = false

def get_questions
	questions_raw = RestClient.get("https://opentdb.com/api.php?amount=50&difficulty=easy&type=multiple")
	JSON.parse(questions_raw)['results']
end

def run_game
	questions_array = Array.new(get_questions)
	scores = ["$0", "$100", "$200", "$300", "$500", "$1,000", "$2,000", "$4,000", "$8,000", "$16,000", "$32,000", "$64,000", "$125,000", "$250,000", "$500,000", "$1,000,000"]
	round = 1
	i = 0

	while questions_array.length > 40
		current_question = get_question(questions_array)
		answer_choices = get_answers(current_question)     

		play(round, current_question, answer_choices, scores)

		user_input = gets.chomp.downcase 

		round = round + 1

		if user_input.downcase == 'exit' || user_input.downcase == 'quit' || user_input.downcase == 'stop' || user_input.downcase == 'leave'
			puts "Okay, goodbye!"
			return
		end

		correct_answer = current_question['correct_answer']

		if user_input == correct_answer.downcase
			sleep(0.5)
			puts "\nThat's correct!"
			i += 1
			score = scores[i] 
			sleep(1)
			puts "\nYour current score is #{score}!"
		else
			sleep(1)
			puts "\nThat's incorrect"
			score = scores[i] 
			sleep(1)
			puts "\nThe correct answer was #{correct_answer}"
			sleep(1)
			puts "\nYour current balance is #{score}!"
		end
		questions_array.delete(current_question)

		if questions_array.length == 40
			game_over
			# This doesn't work becuase score isn't within the scope
			puts "\nYou collected #{score}!"
		end
	end
end

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
	sleep(3)
	system "clear"
	puts HTMLEntities.new.decode("The category is: #{question['category']}")
    puts HTMLEntities.new.decode("\n#{round}. #{question['question']}")
    answers.each { |answer| puts HTMLEntities.new.decode("- #{answer}") }
end

def game_over
	@end_game = true
	puts "\nGame Over!"
end







