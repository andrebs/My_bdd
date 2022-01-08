Dado('acesso {string}') do |funcionalidade|
    @url.acessarWeb
  end

Quando('adiciono {string}') do |tipo_teste|
    @todo.adiciona_tarefa(tipo_teste)
end

Entao('devo ver item adicionado na lista ToDo') do
    @todo.validate_todo
end

Quando('concluo a tarefa') do
    @todo.concluir_tarefa
end

Entao('devo ver item concluído em lista Done') do
    @todo.validate_done
end

Quando('clico para remover tarefa') do
    @todo.removertarefa
end

Entao('devo ver tarefa removida com sucesso') do
    @todo
end