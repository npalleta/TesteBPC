require 'cpf_cnpj'

# --- basic_registation_page.rb
class BasicRegistrationPage < SitePrism::Page
  include RSpec::Matchers

  elements :buttons,             :xpath, '//button'
  elements :text_boxes,          :xpath, '//input'
  elements :labels,              :xpath, '//label'
  elements :opt_job_type,        :xpath, '//select[@*="jobType"]/option'
  elements :opt_profession,      :xpath, '//select[@*="profession"]/option'
  elements :opt_education_level, :xpath, '//select[@*="educationLevel"]/option'
  elements :opt_banking_data,    :xpath, '//select[contains(@id, "bankingData")]/option'
  elements :btn_continue,        :xpath, '//div[@class="button"]/div[contains(.,"CONTINUAR")]'

  def fill_txt_cpf(index)
    Functions.fill_textbox_in_list_by_index(text_boxes, index, CPF.generate)
  end

  def fill_txt_birthdate(index, text)
    Functions.fill_textbox_in_list_by_index(text_boxes, index, text)
  end

  def fill_txt_monthly_income(index, text)
    Functions.fill_textbox_in_list_by_index(text_boxes, index, text)
  end

  def click_lbl_female_gender(value)
    Functions.get_element_in_list_by_value(labels, value).click
  end

  def click_lbl_marital_status(value)
    Functions.get_element_in_list_by_value(labels, value).click
  end

  def click_opt_occupation(value)
    Functions.get_element_in_list_by_value(opt_job_type, value).click
  end

  def click_opt_career(value)
    if value.gsub(/\s+/, '').casecmp('Estudante').zero?
    else
      Functions.wait_element_enable_by_xpath('//select[@*="profession"]')
      Functions.get_element_in_list_by_value(opt_profession, value).click
    end
  end

  def click_opt_education_degree(value)
    Functions.get_element_in_list_by_value(opt_education_level, value).click
  end

  def click_opt_bank_name(value)
    Functions.get_element_in_list_by_value(opt_banking_data, value).click
  end

  def click_btn_has_checkbook(id)
    Functions.get_element_in_list_by_id(labels, id).click
  end

  def click_btn_has_negative_credit_record(id)
    Functions.get_element_in_list_by_id(labels, id).click
  end

  def click_btn_has_property(id)
    Functions.get_element_in_list_by_id(labels, id).click
  end

  def click_btn_has_vehicle(id)
    Functions.get_element_in_list_by_id(labels, id).click
  end

  def click_btn_continue
    btn_continue[0].click
  end

  def check_current_url(path)
    Functions.wait_url_appear(path)
  end
end
