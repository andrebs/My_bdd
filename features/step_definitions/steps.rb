Dado('acesso {string}') do |funcionalidade|
    SiteUrl.new.acessarWeb()
  end

Quando('eu adiciono item') do
    tipo_teste = 'addOneItem'
    TodoPage.new.additem(tipo_teste)
end

Quando('eu adiciono mais de um item') do
    tipo_teste = 'addVariousItens'
    TodoPage.new.additem(tipo_teste)
end

Quando('eu adiciono nenhum item') do
    tipo_teste = 'noAddItem'
    TodoPage.new.additem(tipo_teste)
end

Entao('eu devo ver item adicionado em lista') do
    pending # Write code here that turns the phrase above into concrete actions
end

Entao('eu devo ver itens foram adicionados em lista') do
    pending # Write code here that turns the phrase above into concrete actions
end

Entao('eu devo ver item nao foi adicionado em lista') do
    pending # Write code here that turns the phrase above into concrete actions
end

Quando('eu consulto item') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao('eu devo ver apenas item consultado') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('eu consulto um item não cadastrado') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao('eu devo ver item foi removido com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('eu consulto um item excluído') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao('eu não deve exibir o item que foi removido') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('seleciono item') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('seleciono para excluir item') do
    pending # Write code here that turns the phrase above into concrete actions
  end