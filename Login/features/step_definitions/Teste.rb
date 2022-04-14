Dado("que eu acesso a tela de login") do
    visit 'https://magento.nublue.co.uk/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLm51Ymx1ZS5jby51ay8%2C/'
end
  
Quando("acesso login com {string} e {string}") do |email, senha|
    @email = email
    find('input[id=email]').set @email
    find('#pass').set senha
    click_button 'send'
end
  
Então('deve autenticar com sucesso') do
    find('span[class=logged-in]')
end
