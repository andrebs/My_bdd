#language: pt

@acesso_done
Funcionalidade: Done page

@regressivo
Cenario: Consultar um item
Dado acesso "DONE"
Quando eu consulto item
Entao eu devo ver apenas item consultado

Cenario: Consultar um item por id
Dado acesso "DONE"
Quando eu consulto item por id
Entao eu devo ver apenas item consultado

Cenario: Consultar um item inválido
Dado acesso "DONE"
Quando eu consulto um item não cadastrado
Entao eu devo ver itens foram adicionados em lista

Cenario: Remover um item cadastrado
Dado acesso "DONE"
Quando eu adiciono nenhum item
Entao eu devo ver item foi removido com sucesso

Cenario: Consultar um item excluído
Dado acesso "DONE"
Quando eu consulto um item excluído
Entao eu não deve exibir o item que foi removido