#language: pt

@dados
Funcionalidade: Adicionar tarefas à lista, deletar ou concluir uma tarefa 

O usuário poderá acessar a Página de TO DO e criar uma lista de tarefas a serem realizadas.
As tarefas serão listadas por ordem de inclusão e as tarefas que forem finalizas, poderão ser selecionadas. Quando a tarefa é selecionada, ela automaticamente some da lista de TO DO e aparece na lista DONE, onde poderá ficar para consulta ou poderá ser deletada.


Contexto: Acessar a página de TO DO
    Dado acesso "ToDo"

Cenario: Adicionar uma tarefa
    Quando adiciono "tarefa"
    Entao devo ver tarefa adicionado na lista ToDo

Cenario: Adicionar varias tarefas
    Quando adiciono "tarefas"
    Entao devo ver tarefa adicionado na lista ToDo

Cenario: Concluir uma tarefa
    Quando adiciono "tarefa"
    E concluo a tarefa
    Entao devo ver tarefa concluído em lista Done

Cenario: Remover uma tarefa
    Quando adiciono "tarefa"
    E clico para remover tarefa
    Entao devo ver tarefa removida com sucesso