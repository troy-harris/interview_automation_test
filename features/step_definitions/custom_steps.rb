require 'selenium-cucumber'

Given(/^I open "([^"]*)"$/) do |arg1|
  step %[I navigate to "#{arg1}"]
end

Given(/^I enter username "([^"]*)"$/) do |arg1|
  step %[I enter "#{arg1}" into input field having id "user_sign_up_form_email"]
end

Given(/^I enter password "([^"]*)"$/) do |arg1|
  step %[I enter "#{arg1}" into input field having id "user_sign_up_form_password"]
end

Given(/^I enter postcode "([^"]*)"$/) do |arg1|
  step %[I enter "#{arg1}" into input field having id "user_sign_up_form_zipcode"]
end

When(/^I click create your account button$/) do
  step %[I click on element having name "commit"]
end

Then(/^I should see the "([^"]*)" category displayed$/) do |arg1|
  step %[element having class "featured-category" should have text as "#{arg1}"]
end

# TODO: wip
Then(/^I should see alert text as$/) do |string|
  pending # Write code here that turns the phrase above into concrete actions
end