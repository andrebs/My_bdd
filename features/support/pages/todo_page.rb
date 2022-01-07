class TodoPage < SitePrism::Page

    section :main_page, "#app" do
        elements :btn_acao, "nav a"
        element :input_texto, "input[type=text]"
        element :delete_texto, "button[type=reset]"
        element :btn_criar_task, "button[type=submit]"
        elements :task_cadastrada, "li span"
    end


    def additem(tipo_teste)
        case tipo_teste
        when "item"
            main_page.input_texto.set $task
            main_page.btn_criar_task.click
        else
            main_page.input_texto.set(INFO[tipo_teste]["massa"])
            main_page.btn_criar_task.click
        end
    end

    def removepreitem(tipo_teste)
        
    end

    def searchitem(tipo_teste)
        main_page.done.click
        main_page.searchtask.set(INFO[tipo_teste]["massa"])
    end

    def validate_todo_list
        expect(main_page.task_cadastrada[0].text).to start_with $task
    end
end