# --- address_registration_page.rb
class AddressRegistrationPage < SitePrism::Page
  include RSpec::Matchers

  elements :text_boxes, :xpath, '//input'

  def fill_txt_cep(index, text)
    Functions.fill_textbox_in_list_by_index(text_boxes, index, text)
  end

  def fill_txt_number(index, text)
    Functions.fill_textbox_in_list_by_index_using_set(text_boxes, index, text)
  end

  def fill_txt_additional_data(index, text)
    Functions.fill_textbox_in_list_by_index(text_boxes, index, text)
  end

  def fill_txt_mobile_phone(index, value)
    Functions.fill_textbox_in_list_by_index_using_set(text_boxes, index, value)
  end

  def fill_txt_home_phone(index, value)
    Functions.fill_textbox_in_list_by_index_using_set(text_boxes, index, value)
  end

  def check_current_url(path)
    Functions.wait_url_appear(path)
  end

  def check_complete_registration_url(path)
    Functions.wait_url_appear(path)
  end
end
