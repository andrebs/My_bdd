class TodoPage < SitePrism::Page

    section :main_page, "#app" do
        element :todo, :xpath, '//*[@id="app"]/nav/a[1]'
        element :done, :xpath, '//*[@id="app"]/nav/a[2]'
        element :textitemadd, :xpath, '//*[@id="app"]/section/form/input'
        element :additembutton, :xpath, '//*[@id="app"]/section/form/button[2]/i'
        element :itemlist, :xpath, '//*[@id="app"]/section/ul/li[1]'
        element :searchtask, :xpath, '//*[@id="app"]/section/form/input'
    end

    section :header, "#app" do
        elements :btn_acao, "nav a"
        element :input_texto, "#teste"
        element :delete_texto, "button[type=reset]"
        element :btn_criar_task, "button[type=submit]"
        elements :task_cadastrada, "li span"
    end

    def additem(tipo_teste)
        main_page.textitemadd.set(INFO[tipo_teste]["massa"])
        main_page.additembutton.click
    end

    def additem2(tipo_teste)
        main_page.textitemadd.set $task
        main_page.additembutton.click
    end

    def removepreitem(tipo_teste)
        
    end

    def searchitem(tipo_teste)
        done.click
        searchtask.set(INFO[tipo_teste]["massa"])
    end
end