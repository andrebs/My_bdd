#language: pt

@acesso_todo
Funcionalidade: ToDo page

@regressivo
Cenario: Add one
Dado acesso "localhost"
Quando eu adiciono item
Entao eu devo ver item adicionado em lista

Cenario: Add mais de um item
Dado acesso "localhost"
Quando eu adiciono mais de um item
Entao eu devo ver itens foram adicionados em lista

Cenario: Add nenhum item
Dado acesso "localhost"
Quando eu adiciono nenhum item
Entao eu devo ver item nao foi adicionado em lista