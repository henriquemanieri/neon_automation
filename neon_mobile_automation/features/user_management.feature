Feature: User management

  Scenario: Create user
    Given I press create user
    When I fill all the user data
    Then check the user

  Scenario: Check created user
    Given I access the user information
    Then I check his information

  Scenario: Delete user
    Given I press delete all users
    Then I confirm the delete command
