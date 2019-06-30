class HomePage < SitePrism::Page

  set_url "https://neon.com.br/"

  element :questionsMenu, "[href='/perguntas']"
  element :createAccountButton, ".section-content__button[href='/cadastro']"
  element :statusLink, "[href='/atualizacoes/status']"

  def confirm_home_page
    assert_text("A sua conta digital sem mensalidade")
  end

  def access_questions_page
    questionsMenu.click
  end

  def access_status_page
    statusLink.click
  end

  def access_registration_page
    createAccountButton.click
  end

end
