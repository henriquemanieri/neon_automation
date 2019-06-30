Given(/^I enter the home page$/) do
  @home.load
  @home.confirm_home_page
end

When(/^access the questions page$/) do
  @home.access_questions_page
end

When(/^access the status page$/) do
  @home.access_status_page
end

When(/^access the registration page$/) do
  @home.access_registration_page
end
