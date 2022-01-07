#language: pt

@acesso_todo
Funcionalidade: Adicionar tarefas à lista, deletar ou concluir uma tarefa 

O usuário poderá acessar a Página de TO DO e criar uma lista de tarefas a serem realizadas.
As tarefas serão listadas por ordem de inclusão e as tarefas que forem finalizas, poderão ser selecionadas. Quando a tarefa é selecionada, ela automaticamente some da lista de TO DO e aparece na lista DONE, onde poderá ficar para consulta ou poderá ser deletada.


Contexto: Acessar a página de TO DO
    Dado acesso "ToDo"

Cenario: Adicionar um item
    Quando adiciono "item"
    Entao devo ver item adicionado na lista Done

Cenario: Adicionar mais de um item
    Quando adiciono "mais de um item"
    Entao devo ver itens adicionados na lista Done

Cenario: Não adicionar item
    Quando adiciono "nenhum item"
    Entao devo ver item nao foi adicionado em lista Done

Cenario: Adicionar item e remover em ToDo 
    Quando adiciono "item"
    E seleciono para excluir item
    Entao não devo ver item na lista Done