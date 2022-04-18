class Carrinho 
        include Capybara::DSL
        def acessarapaginadelogin
            visit 'https://magento.nublue.co.uk/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLm51Ymx1ZS5jby51ay8%2C/'
        end
    
        def acessarlogincomemailesenha(email, senha)
            find('input[id=email]').set email
            find('#pass').set senha
            click_button 'send'
        end
    
        def escolherproduto
            find('#ui-id-4').hover
            find('#ui-id-16').hover
            find('#ui-id-20').click
            click_link('Helios EverCool™ Tee')
        end

        def adicinandoaocarrinho
            find('#option-label-size-144-item-168').click
            find('#option-label-color-93-item-49').click
            click_button 'Add to Cart'
        end

        def recebomensagem
            assert_text("You added")
        end
    
    end    