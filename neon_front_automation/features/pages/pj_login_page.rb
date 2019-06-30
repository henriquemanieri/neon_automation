class PjLoginPage < SitePrism::Page

  set_url "https://pj.neonpagamentos.com.br/Login"

  element :emailField, "[placeholder='Usuário'][name='login']"
  element :passwordField, "#password[name='password']"
  element :loginButton,  "#LogButton[name='LogButton']"
  element :alertMessage, ".alert-danger.messageAlert"




  def invalid_customer_access
    emailField.set(Faker::Internet.email)
    passwordField.set(password = (rand 111111..999999))
    loginButton.click
  end

  def confirm_alert_message
    alertMessage.value
  end


end
