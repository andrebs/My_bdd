include RSpec::Matchers

class SiteUrl < SitePrism::Page
    set_url "https://buger-eats-qa.vercel.app"
    
    def acessarWeb(funcionalidade)
        case funcionalidade 
        when 'Buger Eats'
            load
        when 'Cadastro Buger Eats'
            load
            find('#page-home > div > main > a > span > svg').click
        else
            load
        end
    end

end