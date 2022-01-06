#language: pt

@acesso_todo
Funcionalidade: ToDo page

@regressivo
Cenario: Adicionar um item
Dado acesso "TODO"
Quando eu adiciono item
Entao eu devo ver item adicionado em lista

Cenario: Adicionar mais de um item
Dado acesso "TODO"
Quando eu adiciono mais de um item
Entao eu devo ver itens foram adicionados em lista

Cenario: Não adicionar item
Dado acesso "TODO"
Quando eu adiciono nenhum item
Entao eu devo ver item nao foi adicionado em lista

Cenario: Selecionar um item
Dado acesso "TODO"
Quando eu adiciono item
E seleciono item

Cenario: Remover um item
Dado acesso "TODO"
Quando eu adiciono item
E seleciono para excluir item
Entao devo ver item removido da lista

Cenario: Remover um item da lista
Dado acesso "TODO"
Quando eu adiciono mais de um item
E seleciono para excluir item
Entao devo ver item removido da lista