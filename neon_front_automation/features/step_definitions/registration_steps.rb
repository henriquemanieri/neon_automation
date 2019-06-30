Then(/^I try to registate a customer with no use terms checked$/) do
  @registration.customer_registration
  @registration.confirm_alert_message
end
