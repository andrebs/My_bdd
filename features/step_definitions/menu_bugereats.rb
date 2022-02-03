Dado('acesso {string}') do |funcionalidade|
    @mainbugereats.acessarWeb
end

Entao('devo ver logo da página com sucesso') do
    @mainbugereats.validalogo
end

Entao('devo ver a mensagem {string}') do |mensagem|
    @mainbugereats.mensagem(mensagem)
end

Entao('devo ver botão {string}') do |mensagem|
    @mainbugereats.botao(mensagem)
end

Quando('clico em {string}') do |string|
    @mainbugereats.acessarcadastro
end

Entao('devo ver tela de cadastro com sucesso') do
    @mainbugereats.carregapaginacadastro
end