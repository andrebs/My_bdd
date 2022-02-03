include RSpec::Matchers

class MainBugerEats < SitePrism::Page
    set_url "https://buger-eats-qa.vercel.app"

    section :main_buger_eats, "#page-home" do
        element :logo, "img"
        element :title, "h1"
        element :subtitle, "p"
        element :btn_cadastre, "a"
    end

    section :element_convidado, "#page-deliver" do
        element :volta_home, "a"
    end

    def acessarWeb()
        load
    end

    def validalogo()
        expect(main_buger_eats.logo.text).to include 'Buger Eats'
        expect(main_buger_eats.logo.text).to eql 'Buger Eats'
    end

    def mensagem(mensagem)
        expect(main_buger_eats.title.text).to include mensagem
    end
        
    def botao(mensagem)
        expect(main_buger_eats.btn_cadastre.text).to include mensagem
        expect(main_buger_eats.btn_cadastre.text).to eql mensagem 
    end

    def acessarcadastro()
        main_buger_eats.btn_cadastre.click
    end

    def carregapaginacadastro()
        expect(element_convidado.volta_home.text).to include 'Voltar para home'
        expect(element_convidado.volta_home.text).to eql 'Voltar para home'
    end

end