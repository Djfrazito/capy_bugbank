Dado("que acesso o site do Bugbank") do
    visit '/'
end

Quando("preencho todos os dados obrigatorios para cadastro") do
    click_button "Registrar"

    signup_div = find('.card__register')

    signup_div.find('input[name="email"]').set 'djalmafrazito@hotmail.com'
    signup_div.find('input[name="name"]').set 'djalma'
    signup_div.find('input[name="password"]').set '123'
    signup_div.find('input[name="passwordConfirmation"]').set '123'
  
    click_button "Cadastrar"
    
end

Então("cadastro é realizado com sucesso") do
    expect(page).to have_content 'foi criada com sucesso'
end