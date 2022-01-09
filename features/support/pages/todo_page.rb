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
        elements :btn_delete_done_task, "#app > section > ul > li:nth-child(1) > button > i" 
        elements :btn_concluir_task, "input[type=checkbox]"
    end


    def adiciona_tarefa(tipo_teste)
        case tipo_teste
        when "tarefa"
            main_page.input_texto.set $task
            main_page.btn_criar_task.click
        when "tarefa a cancelar"
            main_page.input_texto.set $task
            main_page.delete_texto.click       
        when "tarefas"
            main_page.input_texto.set(INFO[tipo_teste]["massa"])
            main_page.btn_criar_task.click
        else
            main_page.input_texto.set(INFO[tipo_teste]["massa"])
            main_page.btn_criar_task.click
        end
    end

    def concluir_tarefa
        main_page.btn_concluir_task[0].click
    end

    def removertarefa
        main_page.btn_delete_task[0].click
    end

    def searchtarefa(tipo_teste)
        main_page.done.click

        case tipo_teste
        when "tarefa"
            main_page.search_task.set $task
        else
            main_page.search_task.set(INFO[tipo_teste]["massa"])
        end
        
    end

    def validate_todo(result_todo)
        case result_todo
        when "tarefas"
            i = 0
            arr = INFO[result_todo]["massa"].split(";")
            while i < arr.count do
                assert_text(arr[i])
                i += 1
            end
        else
            expect(main_page.task_cadastrada[0].text).to start_with $task
            assert_text($task)
        end
    end

    def validate_done
        main_page.btn_acao[1].click
        assert_text($task)
    end

    def validatarefaremovida
        assert_no_text($task)
    end
end