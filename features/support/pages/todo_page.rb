include RSpec::Matchers

class TodoPage < SitePrism::Page

    section :main_page, "#app" do
        elements :btn_acao, "nav a"
        element :input_texto, "input[type=text]"
        element :delete_texto, "button[type=reset]"
        element :btn_criar_task, "button[type=submit]"
        element :search_task, "input[type=search]"
        elements :task_cadastrada, "li span"
        elements :btn_delete_task, "li button" 

    end


    def adiciona_tarefa(tipo_teste)
        case tipo_teste
        when "item"
            main_page.input_texto.set $task
            main_page.btn_criar_task.click
        else
            main_page.input_texto.set(INFO[tipo_teste]["massa"])
            main_page.btn_criar_task.click
        end
    end

    def concluir_tarefa
        main_page.task_cadastrada[0].click
        btn_acao[1].click
        assert_text($task)
    end

    def removertarefa
        main_page.btn_delete_task.click
    end

    def searchitem(tipo_teste)
        main_page.done.click

        case tipo_teste
        when "item"
            main_page.searchtask.set $task
        else
            main_page.searchtask.set(INFO[tipo_teste]["massa"])
        end
    end

    def validate_todo
        expect(main_page.task_cadastrada[0].text).to start_with $task
        assert_text($task)
    end

    def validate_done
        assert_text($task)
    end

    def validatarefaremovida
        assert_text($task) => false
    end
end