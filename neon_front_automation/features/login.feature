#encoding: utf-8

Feature: Login


	@invalid_login
  Scenario: Specific question validate
		Given I enter the pj login page
		When I fill the username and password with invalid user
		Then I validate the error message
