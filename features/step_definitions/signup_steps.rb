Dado("que acesso o site do Bugbank") do
    visit '/'
end

Quando("preencho todos os dados obrigatorios para cadastro") do
    click_button "Registrar"

    user = {
        :name => Faker::Name.name,
        :email => Faker::Internet.email,
        :password => Faker::Internet.password
    }

    signup_div = find('.card__register')

    signup_div.find('input[name="email"]').set user[:email]
    signup_div.find('input[name="name"]').set user[:name]
    signup_div.find('input[name="password"]').set user[:password]
    signup_div.find('input[name="passwordConfirmation"]').set user[:password]
  
    click_button "Cadastrar"
    
end

Então("cadastro é realizado com sucesso") do
    expect(page).to have_content 'foi criada com sucesso'
end