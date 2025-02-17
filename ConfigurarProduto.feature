            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Dado que eu acesse a página do item

            Esquema do Cenário: Seleção de cor, tamanho e quantidade
            Quando eu escolher <cor>, <tamanho> e <quantidade>
            Então deve ser adicionado ao carrinho

            Exemplos:
            | cor        | tamanho | quantidade |
            | "preto"    | "P"     | "1"        |
            | "cinza"    | "M"     | "3"        |
            | "azul"     | "G"     | "10"       |
            | "preto"    | "GG"    | "5"        |
            | "bege"     | "38"    | "2"        |
            | "vermelha" | "36"    | "7"        |
            | "preto"    | "42"    | "3"        |
            | "branco"   | "46"    | "6"        |

Cenário: Seleção de quantidade acima de 10 itens
Quando eu escolher cor e tamanho
E eu escolher a quantidade acima de 10 unidades
Então deve ser exibido uma mensagem de erro "Quantidade máxima de 10 itens por venda."

Cenário: Botão Limpar
Quando eu escolher cor, tamanho e quantidade
E clicar no botão de limpar
Então as configurações do item devem voltar ao estado orginal da página
