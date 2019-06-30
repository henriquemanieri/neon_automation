class RegistrationPage < SitePrism::Page

  element :nameField, "[name='name']"
  element :emailField, "[name='email']"
  element :birthDateField, "[name='birthdate']"
  element :cpfField, "[name='document']"
  element :phoneField, "[name='phone']"
  element :sendButton,  "[type='submit']"
  element :alertMessage, ".formr-messages"

  def customer_registration
    emailField.set(Faker::Internet.email)
    nameField.set(Faker::Name.name)
    birthDateField.set(birth_date_generate)
    print Faker::CPF.numeric
    cpfField.set(Faker::CPF.numeric)
    phoneField.set(phone = (rand 1111111111..9999999999))
    sendButton.click
  end

  def birth_date_generate
    day = rand 10..29
    month = rand 10..12
    year = rand 1900..2000
    date = "#{day}/#{month}/#{year}"
    return date = "#{day}/#{month}/#{year}"
  end

  def confirm_alert_message
    alertMessage.value
  end


end
