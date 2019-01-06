Quando('eu preencho o campo CPF') do
  basic_registration_page.fill_txt_cpf(0)
end

Quando('preencho o campo Data de Nascimento {string}') do |data_nascimento|
  basic_registration_page.fill_txt_birthdate(1, data_nascimento)
end

Quando('preencho o campo Renda Mensal {string}') do |renda_mensal|
  basic_registration_page.fill_txt_monthly_income(2, renda_mensal)
end

Quando('clico no botão Sexo Feminino') do
  basic_registration_page.click_lbl_female_gender('Feminino')
end

Quando('clico no botão Estado Civil Solteiro') do
  basic_registration_page.click_lbl_marital_status('Solteiro')
end

Quando('seleciono a Ocupação {string}') do |ocupacao|
  basic_registration_page.click_opt_occupation(ocupacao)
end

Quando('seleciono a Profissão {string}') do |profissao|
  basic_registration_page.click_opt_career(profissao)
end

Quando('seleciono o Grau de Instrução {string}') do |grau_instrucao|
  basic_registration_page.click_opt_education_degree(grau_instrucao)
end

Quando('seleciono o Banco {string}') do |banco_conta_titular|
  basic_registration_page.click_opt_bank_name(banco_conta_titular)
end

Quando('clico no botão Com cheques? Sim') do
  basic_registration_page.click_btn_has_checkbook('hasCheckbook')
end

Quando('clico no botão Possui restrições em seu nome? Não') do
  basic_registration_page.click_btn_has_negative_credit_record('hasNegativeCreditRecord2')
end

Quando('clico no botão Possui imóvel próprio? Não') do
  basic_registration_page.click_btn_has_property('hasProperty2')
end

Quando('clico no botão Possui automóvel próprio? Sim') do
  basic_registration_page.click_btn_has_vehicle('hasVehicle')
end

Então('eu devo clicar no botão Continuar') do
  basic_registration_page.click_btn_continue
end

Então(`a página de cadastro de endereço deverá ser visualizada`) do
  basic_registration_page.check_current_url('endereco')
end
