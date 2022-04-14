#language:pt

Funcionalidade: Login

    Cenario: Login realizado com sucesso
        Dado que eu acesso a tela de login
        Quando acesso login com 'roni_cost@example.com' e 'roni_cost3@example.com'
        Então deve autenticar com sucesso