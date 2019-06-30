
Then(/^I validate the card activation service$/) do
  @status.confirm_status_page
  @status.validate_card_activation_service
end
