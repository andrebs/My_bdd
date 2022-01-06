#language: pt

@acesso_todo
Funcionalidade: ToDo Teste

@regressivo
Cenario: Adicionar um item
Dado acesso "ToDo"
Quando adiciono "item"
Entao devo ver item adicionado na lista Done

Cenario: Adicionar mais de um item
Dado acesso "ToDo"
Quando adiciono "mais de um item"
Entao devo ver itens adicionados na lista Done

Cenario: Não adicionar item
Dado acesso "ToDo"
Quando adiciono "nenhum item"
Entao devo ver item nao foi adicionado em lista Done

Cenario: Adicionar item e remover em ToDo 
Dado acesso "ToDo"
Quando adiciono "item"
E seleciono para excluir item
Entao não devo ver item na lista Done