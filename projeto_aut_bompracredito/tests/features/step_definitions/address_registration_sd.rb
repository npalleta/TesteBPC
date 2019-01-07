Quando('eu preencho o campo CEP {string}') do |cep|
  address_registration_page.fill_txt_cep(0, cep)
end

Quando('preencho o campo Número {string}') do |numero|
  address_registration_page.fill_txt_number(2, numero)
end

Quando('preencho o campo Complemento') do
  address_registration_page.fill_txt_additional_data(3, 'Complemento')
end

Quando('preencho o campo Telefone Celular {string}') do |num_tel_celular|
  address_registration_page.fill_txt_mobile_phone(6, num_tel_celular)
end

Quando('preencho o campo Outro Telefone {string}') do |outro_telefone|
  address_registration_page.fill_txt_home_phone(7, outro_telefone)
end

Então('a página de resultado deverá ser visualizada') do
  address_registration_page.check_current_url('resultado')
end

Então('a página de cadastro completo deverá ser visualizada') do
  address_registration_page.check_complete_registration_url('cadastrocompleto')
  sleep 3
end
