# language: pt

Funcionalidade: Realizar o cadastro de cliente na plataforma

 - Eu, como usuário, gostaria de realizar
 - o cadastro na plataforma

Esquema do Cenário: Realizar o Cadastro na Plataforma

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
Exemplos:
| pagina                | valor   | parcelas | nome_completo  | email                       | data_nascimento | renda_mensal | ocupacao      | profissao    | grau_instrucao      | banco_conta_titular |
| "emprestimo-pessoal/" | "3.000" | "18"     | "Carlos Silva" | "carlos_silva@teste.com.br" | "01011988"      | "200000"     | "Assalariado" | "Desenhista" | "Superior Completo" | "Itaú Unibanco"     |