carrinho= Carrinho.new

Dado("que eu acesso a tela de login") do
    carrinho.acessarapaginadelogin
end

Quando("faço login com {string} e {string}") do |email, senha|
    carrinho.acessarlogincomemailesenha(email, senha)
end
Quando("escolho produto") do
    carrinho.escolherproduto
end
      
Quando("adiciono no carrinho") do
    carrinho.adicinandoaocarrinho    
end

Então("recebo a mensagem You added Helios EverCool™ Tee to your shopping cart.") do 
    carrinho.recebomensagem 
end