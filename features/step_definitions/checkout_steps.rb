Then(/^I open the Search page$/) do
end

When(/^I search for "([^"]*)" tv$/) do |arg1|
end

Then(/^I get a results page$/) do
end

Then(/^I pick the first item from the search results$/) do
end

Then(/^I click on the Purchase button$/) do
end

Then(/^I enter credit card number "([^"]*)"$/) do |arg1|
end

Then(/^I add card holder "([^"]*)"$/) do |arg1|
end

Then(/^I add expiration date "([^"]*)"$/) do |arg1|
end

Then(/^I add ccv code "([^"]*)"$/) do |arg1|
end

Then(/^I click on the Buy button$/) do
end

Then(/^I verify that the transaction completed successfully$/) do
end

Then(/^I enter default valid credit card info$/) do
  steps %{
        And I enter credit card number "1234 5678 9009 8765"
      Then I add card holder "Dan Marcus"
      And I add expiration date "07/2020"
      Then I add ccv code "1234"
  }
end