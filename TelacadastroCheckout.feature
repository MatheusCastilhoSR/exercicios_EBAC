            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a página de cadastro da EBAC-SHOP

            Cenário: Dados obrigatórios
            Quando eu digitar em todos os campos marcados com asterisco
            E clicar no botão de submeter
            Então deve exibir "Usuário cadastrado." e concluir o cadastro

            Esquema do Cenário: Cadastro inválido
            Quando eu digitar o <email>
            Então deve exibir <mensagem> de erro

            Exemplos:
            | email                       | mensagem                |
            | "xx@brasil.com"             | "E-mail não permitido." |
            | "masqueico@com.com"         | "E-mail não permitido." |
            | "maria___filha@bola.com.br" | "E-mail não permitido." |
            | "@gmail.com.us"             | "E-mail não permitido." |

            Cenário: Campos vazios
            Quando eu não digitar em todos os campos marcados com asterisco
            E clicar no botão de submeter
            Então deve exibir "Campos em branco." e redirecionar para o topo da página 

