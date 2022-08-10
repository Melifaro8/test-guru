# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
categories = Category.create!([{title: 'PL'}, {title: 'FW'}])
users = User.create!([{login: 'Mike', password: '123'}, {login: 'John', password: '234'}])
tests = Test.create!([{title: 'RUBY', level: 1, category_id: categories[0].id, author_id: users[0].id}, {title: 'RAILS', level: 2, category_id: categories[1].id, author_id: users[0].id}, {title: 'HTML', category_id: categories[0].id, author_id: users[0].id}])
questions = Question.create!([{body: 'question 1', test_id: tests[0].id}, {body: 'question 2', test_id: tests[1].id}, {body: 'question 3', test_id: tests[2].id}, {body: 'question 4', test_id: tests[0].id}])
answers = Answer.create!([{body: 'answer 1', question_id: questions[0].id}, {body: 'answer 2', question_id: questions[1].id}, {body: 'answer 3', question_id: questions[2].id}, {body: 'answer 4', question_id: questions[3].id}])
results = Result.create!([
  {scores: 9, user_id: users[0].id, test_id: tests[0].id}, 
  {scores: 16, user_id: users[1].id, test_id: tests[1].id}, 
  {scores: 34, user_id: users[0].id, test_id: tests[2].id}])
