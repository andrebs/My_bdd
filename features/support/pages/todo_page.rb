include RSpec::Matchers

class TodoPage2 < SitePrism::Page
  set_url ENV["url_padrao"]

  section :header, "#app" do
    elements :btn_acao, "nav a"
    element :input_texto, "#teste"
    element :delete_texto, "button[type=reset]"
    element :btn_criar_task, "button[type=submit]"
    elements :task_cadastrada, "li span"
  end

  def carregar_home
    load
    wait_until_header_visible
    expect(header).to have_btn_acao(:count =>2)
    expect(header).to have_input_texto
    expect(header).to have_btn_acao
  end

  def inserir_tarefa
    header.input_texto.set $task
    header.btn_criar_task.click
  end

  def inserir_segunda_tarefa
    header.input_texto.set $segunda_task
    header.btn_criar_task.click
  end

  def verificar_tarefa
    expect(header.task_cadastrada[0].text).to start_with $task
  end

  def verificar_tarefas
    expect(header.task_cadastrada[0].text).to start_with $task
    expect(header.task_cadastrada[1].text).to start_with $segunda_task
  end

  def campo_em_branco
    header.input_texto.set ""
  end

  def adicionar_lista
    header.btn_criar_task.click
  end

  def lista_vazia
    # expect(header.task_cadastrada[0]).not_to
  end
end
