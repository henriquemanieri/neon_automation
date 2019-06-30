class QuestionsPage < SitePrism::Page
  element :questionText, :xpath, "//label[@class='heading-regular']/following::h4[contains(text(), 'A Neon é só um cartão')]"


  def confirm_questions_page
    assert_text("Perguntas? A gente responde!")
  end

  def click_question
    scroll_to(questionText)
    questionText.click
  end

  def confirm_question_answer(answer_1)
    assert_text("#{answer_1}")
  end

  def scroll_to(element)
    execute_script('arguments[0].scrollIntoView(false)', element)
    execute_script "window.scrollBy(0,300)"
  end

end
