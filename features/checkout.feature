@checkout
  Feature: Test checkout functionality from shopping cart

    Scenario: As a user I can purchase a TV using a valid credit card
      Given I prepare my environment for test execution
      Then I open the Search page
      When I search for "Sony" tv
      Then I get a results page
      And I pick the first item from the search results
      Then I click on the Purchase button
      And I enter credit card number "1234 5678 9009 8765"
      Then I add card holder "Dan Marcus"
      And I add expiration date "07/2020"
      Then I add ccv code "1234"
      Then I click on the Buy button
      And I verify that the transaction completed successfully

    Scenario: Condensed version of above scenario using "nested steps"
      Given I prepare my environment for test execution
      Then I open the Search page
      When I search for "Sony" tv
      Then I get a results page
      And I pick the first item from the search results
      Then I click on the Purchase button

      And I enter default valid credit card info

      Then I click on the Buy button
      And I verify that the transaction completed successfully