Dado('acesso {string}') do |funcionalidade|
    @url.acessarWeb
  end

Quando('adiciono {string}') do |tipo_teste|
    @todo.adiciona_tarefa(tipo_teste)
end

Entao('devo ver tarefa adicionado na lista ToDo') do
    @todo.validate_todo(tipo_teste)
end

Entao('devo ver {string} adicionado na lista ToDo') do |result_todo|
    @todo.validate_todo(result_todo)
end

Quando('concluo a tarefa') do
    @todo.concluir_tarefa
end

Entao('devo ver tarefa concluído em lista Done') do
    @todo.validate_done
end

Quando('clico para remover tarefa') do
    @todo.removertarefa
end

Entao('devo ver tarefa removida com sucesso') do
    @todo.validatarefaremovida
end

Entao('nao devo ver tarefa adicionado na lista ToDo') do
    @todo.validatarefaremovida
end