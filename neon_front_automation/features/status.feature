#encoding: utf-8

Feature: Services Validation


	@services_validation
  Scenario: Specific question validate
		Given I enter the home page
		When access the status page
		Then I validate the card activation service
