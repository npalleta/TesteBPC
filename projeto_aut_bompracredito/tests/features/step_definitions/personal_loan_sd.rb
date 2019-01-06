Quando('eu clico no botão {string} de empréstimo') do |valor|
  personal_loan_page.click_btn_amount(valor)
end

Quando('clico no botão quantidade de {string}') do |valor|
  personal_loan_page.click_btn_installments(valor)
end

Quando('preencho o campo Nome {string}') do |texto|
  personal_loan_page.fill_txt_name(0, texto)
end

Quando('preencho o campo Email {string}') do |texto|
  personal_loan_page.fill_txt_email(1, texto)
end

Então('eu clico no botão Continuar') do
  personal_loan_page.click_btn_continue('CONTINUAR')
end

Então('a página de cadastro básico deverá ser visualizada') do
  personal_loan_page.check_current_url('cadastrobasico')
end
