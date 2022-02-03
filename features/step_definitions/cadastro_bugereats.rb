Quando('eu informo todos os meu dados') do
    @cadastrobugereats.informadados
end

Quando('realizo meu cadastro') do
    @cadastrobugereats.finalizacadastro
end

Então('devo ver meu cadastro realizado com sucesso') do
    @cadastrobugereats.validaresultado
end