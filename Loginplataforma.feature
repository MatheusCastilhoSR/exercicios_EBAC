            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de autenticação da EBAC-SHOP

            Esquema do Cenário: Autenticação válida
            Quando eu digitar o <usuario> e <senha>
            Então deve exibir a <mensagem> e redirecionar para a tela de checkout

            Exemplos:
            | usuario                     | senha              | mensagem         |
            | "mateus1523@ebac.com.br"    | "teste!@#"         | "Olá, Mateus!"   |
            | "mariazinha33@yahoo.com"    | "132241@!3"        | "Olá, Maria!"    |
            | "bernadin@bol.com"          | "AliBaba762"       | "Olá, Bernardo!" |
            | "sandra_gomas@gmail.com.br" | "SandraSandra1992" | "Olá, Sandra!"   |

Cenário: Usuário ou senha inválida
Quando eu digitar o usuário "xxx@ebac.com"
E a senha "123"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos."
