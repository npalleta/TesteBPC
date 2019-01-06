# --- personal_loan_page.rb
class PersonalLoanPage < SitePrism::Page
  include RSpec::Matchers

  elements :buttons,    :xpath, '//button'
  elements :text_boxes, :xpath, '//input'

  def click_btn_amount(value)
    Functions.get_element_in_list_by_value(buttons, value).click
  end

  def click_btn_installments(value)
    Functions.get_element_in_list_by_value(buttons, value).click
  end

  def fill_txt_name(index, text)
    Functions.fill_textbox_in_list_by_index(text_boxes, index, text)
  end

  def fill_txt_email(index, text)
    Functions.fill_textbox_in_list_by_index(text_boxes, index, text)
  end

  def click_btn_continue(value)
    Functions.get_element_in_list_by_value(buttons, value).click
  end

  def check_current_url(path)
    Functions.wait_url_appear(path)
  end
end
