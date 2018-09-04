require 'rest-client'
require 'json'

def get_questions
	questions_raw = RestClient.get("https://opentdb.com/api.php?amount=50&type=multiple")
	JSON.parse(questions_raw)['results']
end

def run_game
    questions_array = Array.new(get_questions)
    score_count = 0
    round = 1

def get_question(questions)
    i = rand(questions.length)
    question = questions[i]
end

def get_answers(question)
    choices = Array.new(question['incorrect_answers'])
    i = rand(choices.length)
    choices.insert(i, question['correct_answer'])
end

def play(round, question, answers)
	puts "\nThe category is: #{question['category']}"
    puts "#{round}. #{question['question']}"
    answers.each { |answer| puts "- #{answer}" }
end

def delete_question(questions, question)
    questions.delete(question)
end

while questions_array.length > 0
	current_question = get_question(questions_array)
	answer_choices = get_answers(current_question)     

	play(round, current_question, answer_choices)

	user_input = gets.chomp 

	if user_input.downcase == 'exit' || user_input.downcase == 'quit' || user_input.downcase == 'stop' || user_input.downcase == 'leave'
    	puts "Okay, goodbye!"
    	return
	end

	correct_answer = current_question['correct_answer']

	if user_input == correct_answer.downcase
    	puts "That's correct!"
    	score_count = score_count + 1
    	puts "Your current score is #{score_count}!"
	else
    	puts "That's incorrect"
	end
end

end






