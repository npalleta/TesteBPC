# language: pt

Funcionalidade: Realizar o fluxo de cadastro incompleto - visualizar página de cadastro completo

 - Eu, como usuário, gostaria de navegar
 - pela plataforma e visualizar
 - a página de cadastro completo

Esquema do Cenário: Visualizar a página de Cadastro Completo

Dado que acesso a <pagina> desejada
E a <pagina> deverá ser apresentada
Quando eu clico no botão <valor> de empréstimo
E clico no botão quantidade de <parcelas>
E preencho o campo Nome <nome_completo>
E preencho o campo Email <email>
Então eu clico no botão Continuar
E a página de cadastro básico deverá ser visualizada
Quando eu preencho o campo CPF
E preencho o campo Data de Nascimento <data_nascimento>
E preencho o campo Renda Mensal <renda_mensal>
E clico no botão Sexo Feminino
E clico no botão Estado Civil Solteiro
E seleciono a Ocupação <ocupacao>
E seleciono a Profissão <profissao>
E seleciono o Grau de Instrução <grau_instrucao>
E seleciono o Banco <banco_conta_titular>
E clico no botão Com cheques? Sim
E clico no botão Possui restrições em seu nome? Não
E clico no botão Possui imóvel próprio? Não
E clico no botão Possui automóvel próprio? Sim
Então eu devo clicar no botão Continuar
E a página de cadastro de endereço deverá ser visualizada
Quando eu preencho o campo CEP <cep>
E preencho o campo Número <numero>
E preencho o campo Complemento
E preencho o campo Telefone Celular <num_tel_celular>
E preencho o campo Outro Telefone <outro_telefone>
Então eu devo clicar no botão Continuar
E a página de resultado deverá ser visualizada
E a página de cadastro completo deverá ser visualizada
Exemplos:
| pagina                | valor   | parcelas | nome_completo   | email                   | data_nascimento | renda_mensal | ocupacao      | profissao     | grau_instrucao        | banco_conta_titular | cep         | numero | num_tel_celular | outro_telefone  |
| "emprestimo-pessoal/" | "3.000" | "18"     | "Juliana Silva" | "ju_silva@teste.com.br" | "01011988"      | "200000"     | "Assalariado" | "Desenhista"  | "Superior Completo"   | "Citibank"          | "01506-000" | "1000" | "(11)999999999" | "(11)888888888" |
| "emprestimo-pessoal/" | "5.000" | "9"      | "Adriana Gomes" | "adriana@teste.com.br"  | "01111988"      | "800000"     | "Empresário"  | "Piscicultor" | "Superior Completo"   | "Bradesco"          | "01506-000" | "1000" | "(11)999999999" | "(11)888888888" |
| "emprestimo-pessoal/" | "2.000" | "24"     | "Maria Paiva"   | "m_paiva@teste.com.br"  | "05061995"      | "100000"     | "Estudante"   | "Estudante"   | "Superior Incompleto" | "Itaú Unibanco"     | "01506-000" | "1000" | "(11)999999999" | "(11)888888888" |