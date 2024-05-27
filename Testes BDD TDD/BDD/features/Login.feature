#Teste de login

Feature: Logar
  Scenario: Realizar um login
    Given eu tenho dois tipos de dados: nome e senha 
    When eu verifico no banco
    Then o resultado deve ser Login com sucesso na mensagem do aplicativo
  
    Given eu tenho dois tipos de dados errados de : nome e senha
    When eu verifico no banco  
    Then o resultado deve ser Login mal sucedido na mensagem do aplicativo