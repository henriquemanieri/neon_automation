#encoding: utf-8

Feature: Customer registration


	@customer_registration
  Scenario: Registrate invalid user
		Given I enter the home page
		When access the registration page
		Then I try to registate a customer with no use terms checked
