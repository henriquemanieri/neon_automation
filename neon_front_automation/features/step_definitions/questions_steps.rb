
Then(/^I validate the answer "([^"]*)" of the question$/) do |answer_1|
  @questions.confirm_questions_page
  @questions.click_question
  @questions.confirm_question_answer($default_data['answers'][answer_1])
end