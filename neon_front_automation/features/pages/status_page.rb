class StatusPage < SitePrism::Page

  element :statusHeader, ".status-header__title"
  element :worksFineText, :xpath, "//p[contains(text(), 'Ativação de cartão')]/ancestor::*[1]"
  element :cardActivationStatus, :xpath, "//p[@class='inline-card__text']/following::p[contains(text(), 'Ativação de cartão')]"

  def confirm_status_page
    find(".status-header__title")
    assert_text("Status Neon")
  end

  def validate_card_activation_service
    assert_text("Ativação de cartão")
    find(:xpath, "//p[contains(text(), 'Ativação de cartão')]/ancestor::*[1]")
    find(:xpath, "//p[@class='inline-card__text']/following::p[contains(text(), 'Ativação de cartão')]")
  end

end
