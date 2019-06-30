Given(/^I enter the pj login page$/) do
  @pj_login.load
end

When(/^I fill the username and password with invalid user$/) do
  @pj_login.invalid_customer_access
end

Then(/^I validate the error message$/) do
  @pj_login.confirm_alert_message
end
