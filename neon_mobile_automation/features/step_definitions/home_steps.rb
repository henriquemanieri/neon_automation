require 'calabash-android/calabash_steps'

Given(/^I press create user$/) do
  page(HomeScreen).validate_home
  page(HomeScreen).access_add_user
end

When(/^I fill all the user data$/) do
  page(HomeScreen).add_user_information
end

Then(/^check the user$/) do
  page(HomeScreen).validate_user_box
end

Given(/^I access the user information$/) do
  page(HomeScreen).validate_user_box
  page(HomeScreen).click_user_box
end

Then(/^I check his information$/) do
  page(HomeScreen).validate_user_information
end

Given(/^I press delete all users$/) do
  page(HomeScreen).delete_user
end

Then(/^I confirm the delete command$/) do
  page(HomeScreen).confirm_delete_user
end
