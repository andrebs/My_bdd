class TodoPage < SitePrism::Page
    element :todo, :xpath, '//*[@id="app"]/nav/a[1]'
    element :done, :xpath, '//*[@id="app"]/nav/a[2]'
    element :textitemadd, :xpath, '//*[@id="app"]/section/form/input'
    element :additembutton, :xpath, '//*[@id="app"]/section/form/button[2]/i'
    element :itemlist, :xpath, '//*[@id="app"]/section/ul/li[1]'

    def efetuarLogin(tipo_teste)
        login.set(Base64.decode64(INFO[tipo_teste]["login"]))
        password.set(Base64.decode64(INFO[tipo_teste]["senha"]))
        botaoEntrar.click
    end

    def additem(tipo_teste)
        textitemadd.set(Base64.decode64(INFO[tipo_teste]["massa"]))
        additembutton.click
    end
end