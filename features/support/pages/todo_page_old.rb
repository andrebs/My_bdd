class TodoPage < SitePrism::Page
    element :todo, :xpath, '//*[@id="app"]/nav/a[1]'
    element :done, :xpath, '//*[@id="app"]/nav/a[2]'
    element :textitemadd, :xpath, '//*[@id="app"]/section/form/input'
    element :additembutton, :xpath, '//*[@id="app"]/section/form/button[2]/i'
    element :itemlist, :xpath, '//*[@id="app"]/section/ul/li[1]'
    element :searchtask, :xpath, '//*[@id="app"]/section/form/input'

    def additem(tipo_teste)
        textitemadd.set(INFO[tipo_teste]["massa"])
        additembutton.click
    end

    def removepreitem(tipo_teste)
        
    end

    def searchitem(tipo_teste)
        done.click
        searchtask.set(INFO[tipo_teste]["massa"])
    end
end