Dado('acesso {string}') do |funcionalidade|
    @url.acessarWeb
  end

Quando('adiciono {string}') do |tipo_teste|
    @todo.additem(tipo_teste)
end

Quando('seleciono para excluir item') do
    pending # Write code here that turns the phrase above into concrete actions
end

Entao('devo ver item adicionado na lista Done') do
    @todo.validate_todo_list()
end

Entao('devo ver itens adicionados na lista Done') do
    pending # Write code here that turns the phrase above into concrete actions
end

Entao('devo ver item nao foi adicionado em lista Done') do
    pending # Write code here that turns the phrase above into concrete actions
end

Entao('não devo ver item na lista Done') do
    pending # Write code here that turns the phrase above into concrete actions
end