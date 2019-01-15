Given(/^I prepare my environment for test execution$/) do
  puts "Hello World"
  puts "Ready to run!"
end

Given(/^I open the login page$/) do
  puts "I am on the login page"
end

Then(/^I send my login credentials BayQaTraining$/) do
  puts "I send the login username"
end

And(/^I send my password 1234567890$/) do
  puts "I send the password"
end

When(/^I press the "([^"]*)" button$/) do |arg|
  puts "I clicked the Login button"
end

Then(/^I should be signed in to the associated account "([^"]*)"$/) do |arg|
  puts "I am signed in"
end

Then(/^I send my login "([^"]*)"$/) do |login|
  puts login
end

And(/^I send my password "([^"]*)"$/) do |password|
  puts password
end

And(/^I should( not)? see an error message$/) do |condition|
  if condition == " not"
    puts "everything is ok"
  else
    puts "Error message appeared"
  end
end
