login= Login.new
Dado("que eu acesso a tela de login") do
    login.acessarapaginadelogin
end
  
Quando("acesso login com {string} e {string}") do |email, senha|
    login.acessarlogincomemailesenha(email, senha)
end
  
Então('deve autenticar com sucesso') do
    login.autenticacaocomsucesso
end
