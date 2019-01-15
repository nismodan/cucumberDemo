@regression
Feature: Test scenarios for login functionality

  Background:
    Given I prepare my environment for test execution
    Given I open the login page
  @login
  Scenario: User is able to login with valid credentials.
    Then I send my login credentials BayQaTraining
    And I send my password 1234567890
    When I press the "Login" button
    Then I should be signed in to the associated account "BayQaTraining"
    And I should not see an error message
  @login
  Scenario: Parameterized login and password
    Then I send my login "user"
    And I send my password "1234567890"
    When I press the "Login" button
    Then I should be signed in to the associated account "BayQaTraining"
    And I should see an error message


  Scenario Outline: Test login functionality for multiple accounts
      Then I send my login "<login>"
      And I send my password "<password>"
      When I press the "Login" button
      Then I should be signed in to the associated account "BayQaTraining"

      Examples: multiple accounts
      |login|password|
      |user1|pass1   |
      |user2|pass2   |
      |user3|pass2   |
