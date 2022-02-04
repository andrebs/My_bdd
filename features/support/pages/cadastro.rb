include RSpec::Matchers

class CadastroBugerEats < SitePrism::Page

    section :dados, "#page-deliver" do

        #volta para home
        element :volta_home, "a"

        #Dados
        element :nome_completo, 'input[name="fullName"]'
        element :cpf, 'input[name="cpf"]'
        element :email, 'input[name="email"]'
        element :whatsapp, 'input[name="whatsapp"]'

        #Endereço
        element :cep, 'input[name="postalcode"]'
        element :buscar_cep, 'input[type=button][value="Buscar CEP"]'
        element :rua, 'input[name="address"]'
        element :numero, 'input[name="address-number"]'
        element :complemento, 'input[name="address-details"]'
        element :bairro, 'input[name="district"]'
        element :cidade_uf, 'input[name="city-uf"]'

        #Metodo de Entrega
        elements :metodo_entrega, 'delivery-method li'

        #upload de cnh
        element :upload_cnh, 'input[type="file"]'

        #cadastrar
        element :cadastre_se_button, 'button'

        #Modal Resultado
        element :modal_validacao, 'body > div.swal2-container.swal2-center.swal2-backdrop-show > div'
        element :botao_fechar, 'body > div.swal2-container.swal2-center.swal2-backdrop-show > div > div.swal2-actions > button.swal2-confirm.swal2-styled'

        #campos obrigatorios
        element :campos_obrigatorio, 'span[class="alert-error"]'
    end

    section :validacao, "#swal2-html-container" do

        #cadastro realizado
        element :cadastro_realizado, 'div[id="swal2-html-container"]'

    end

    def informadados()
        dados.nome_completo.set $nome_completo
        dados.cpf.set $cpf
        dados.email.set $email
        dados.whatsapp.set $whatsapp

        dados.cep.set $cep
        dados.buscar_cep.click
        dados.numero.set $numero
        dados.complemento.set $complemento


        #attach_file(dados.upload_cnh, $upload_cnh)
        #attach_file(dados.upload_cnh,'./features/data/cnh-digital.jpg', make_visible:true)
    end

    def finalizacadastro
        dados.cadastre_se_button.click
    end

    def validaregra()
        expect(dados.campos_obrigatorio.text).to include (MSG['mensagens']['cadastro'])
        expect(dados.campos_obrigatorio.text).to eql (MSG['mensagens']['cadastro'])
    end

    def validacadastro
        expect(validacao.cadastro_realizado.text).to include (MSG['mensagens']['cadastro'])
        expect(validacao.cadastro_realizado.text).to eql (MSG['mensagens']['cadastro'])
    end

end