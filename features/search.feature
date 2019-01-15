@search @regression

Feature: Test scenarios related to search functionality

  Background:
    Given I prepare my environment for test execution


  Scenario: User is able to search items by keyword
    Given I navigate to the search page
    Then I search by keyword "computer"
    And I get search results list

  Scenario Outline: User is able to search items by keyword
    Given I navigate to the search page
    Then I search by keyword "computer"
    And I get search results list

    Examples:
      |keyword|
      |paper  |
      |towel  |
      |glass  |
      |ham sandwich|
      |burger      |

  Scenario: User is able to search items by product name
    Given I navigate to the search page
    When I search by keyword "black tea"
    Then I get search results list
    And all items should have a discount tag
    |Ceylon           | 25% off|
    |English Breakfast| 50% off|