Before "@dados" do

  # Mensagens de validação
  MSG = YAML.load_file('./features/data/dados.yml')

  # Dados Cadastro
  $nome_completo = Faker::Lorem.sentence
  $cpf = Faker::IDNumber.brazilian_citizen_number
  $email = Faker::Internet.email
  $whatsapp = Faker::Number.number(digits: 11)

  # Endereço Cadastro
  $cep = '02310000'
  $numero = Faker::Address.building_number
  $complemento = Faker::Address.secondary_address

  #Foto CNH
  CNH = load_file('./features/data/cnh-digital.jpg')
  
end
  