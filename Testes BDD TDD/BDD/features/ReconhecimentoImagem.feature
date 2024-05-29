#teste para implementação do gemini para reconhecimento de imagem para reconhecer alimento

Feature: Reconhecer um alimento pela imagem 
  Scenario: Realizar uma descrição da imagem
    Given eu tenho uma imagem de um alimento
    When eu descrevo a imagem pelo gemini e imprimo a descrição
    Then o resultado deve uma descrição do alimento
  
    Given eu tenhp uma foto de um objeto
    When eu descrevo a imagem
    Then o resultado deve imprimir uma mensagem que avise que não é um alimento