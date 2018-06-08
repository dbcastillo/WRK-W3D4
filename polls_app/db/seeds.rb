# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.destroy_all
  Poll.destroy_all
  Question.destroy_all
  AnswerChoice.destroy_all
  Response.destroy_all


  alejandro = User.create!(username: 'Alejandro')
  derick = User.create!(username: 'Derick')

  two_question_poll = Poll.create!(title: 'Pizza & Assessment Poll', author: alejandro)

  pizza_q_1 = Question.create!(text: 'Best pizza topping?', poll: two_question_poll)

  pqac1 = AnswerChoice.create!(text: 'Extra cheese', question: pizza_q_1)
  pqac2 = AnswerChoice.create!(text: 'Pep', question: pizza_q_1)
  pqac3 = AnswerChoice.create!(text: 'Sausage', question: pizza_q_1)

  assessmentQ = Question.create!(text: 'Which assessment will be the hardest?', poll: two_question_poll)
  ac3 = AnswerChoice.create!(text: '3', question: assessmentQ)
  ac4 = AnswerChoice.create!(text: '4', question: assessmentQ)
  ac6 = AnswerChoice.create!(text: '6', question: assessmentQ)

  r1 = Response.create!(
    respondent: alejandro,
    answer_choice: ac4
  )
  r2 = Response.create!(
    respondent: derick,
    answer_choice: pqac2
  )
end 
