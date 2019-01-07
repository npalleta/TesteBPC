# ---
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')]
  .each { |file| require file }

# ---
module Pages
  def init_page
    @init_page ||= InitialPage.new
  end

  def personal_loan_page
    @personal_loan_page ||= PersonalLoanPage.new
  end

  def basic_registration_page
    @basic_registration_page ||= BasicRegistrationPage.new
  end

  def address_registration_page
    @address_registration_page ||= AddressRegistrationPage.new
  end
end
