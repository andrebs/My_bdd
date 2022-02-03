#language: pt

@dados
Funcionalidade: Cadastro de Entregador

Como usuário
Quero realizar meu cadastro de entregador


Contexto: Acessar a página de Cadastro
    Dado acesso "Cadastro Buger Eats"

Cenario: Realizar um cadastro de entregador com sucesso
    Quando eu informo todos os meu dados
    E realizo meu cadastro
    Então devo ver meu cadastro realizado com sucesso