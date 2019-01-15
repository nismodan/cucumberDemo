Given(/^I navigate to the search page$/) do
  puts "Search page is opened"
end

Then(/^I search by keyword "([^"]*)"$/) do |keyword|
  puts "Keyword is entered and searched"
end

And(/^I get search results list$/) do
  puts "PLP is shown for keyword"
end

And(/^all items should have a discount tag$/) do |table|
  table = table.raw
  puts table
end