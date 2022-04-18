class Login
    include Capybara::DSL
    def acessarapaginadelogin
        visit 'https://magento.nublue.co.uk/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLm51Ymx1ZS5jby51ay8%2C/'
        
    end

    def acessarlogincomemailesenha(email, senha)
        find('input[id=email]').set email
        find('#pass').set senha
        click_button 'send'
        sleep 5
    end

    def autenticacaocomsucesso
        assert_text("Veronica")
    end

end

