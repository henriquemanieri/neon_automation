#encoding: utf-8

Feature: Question and answer


	@question_validation
  Scenario: Specific question validate
		Given I enter the home page
		When access the questions page
		Then I validate the answer "answer_1" of the question
