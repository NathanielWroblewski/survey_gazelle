user = User.create(username: "molly")
holly = User.create(username: "holly")
survey = Survey.create(title: "politics")
question = Question.create(question: "are you a bastard")
choice1 = Choice.create(choice: "yes")
choice2 = Choice.create(choice: "no")
answer = ChoicesUser.create
choice1.choices_users << answer
choice1.save
holly.choices_users << answer
holly.save

user.surveys << survey
user.save
survey.questions << question
survey.save
question.choices << [choice1, choice2]
question.save
