#language:pt
@desafio
@cadastro
Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Inmrobo
    Quero fazer o meu cadastro
    Para que eu possa ter acesso a área logada

    @cadastro_usuario
    Cenário: Cadastro de usuário
        Dado que acesso a página de Login
        Quando clico em cadastre-se
        E submeto o meu cadastro:
            | email          | abcdefg8            |
            | senha          | pwd123              |
            | senha_confirma | pwd123              |
        Então devo ser redirecionado para o login

    @cadastro_cabecalho
    Cenário: Cadastro de usuário pelo cabeçalho
        Dado que acesso a página de Login
        Quando clico em cadastre-se no cabeçalho
        E submeto o meu cadastro:
            | email          | abcdefg7            |
            | senha          | pwd123              |
            | senha_confirma | pwd123              |
        Então devo ser redirecionado para o login


    @mensagens
    Esquema do Cenário: Tentativa de cadastro
        Dado que acesso a página de Login
        Quando clico em cadastre-se
        E submeto o meu cadastro:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <senha_confirma> |
        Então devo ver a mensagem: ".alert-validate"

        #<> - Placeholder, vai ser a matriz. 1ª linha é o cabeçalho
        #Matriz de exemplos
        Exemplos:
            | email               | senha  | senha_confirma|
            |                     | pwd123 | pwd123        |
            | guilherme@yahoo.com |        |               |
            |                     |        |               | 

    @senha_divergente
    Cenário: Senhas Divergentes
        Dado que acesso a página de Login
        Quando clico em cadastre-se     
        E submeto o meu cadastro:
            | email          | abcdefg4            |
            | senha          | pwd123              |
            | senha_confirma | asd123              |
        Então devo ver a mensagem de erro: "Senhas não combinam"

    @usuario_cadastrado
    Cenário: Usuário já Cadastrado
        Dado que acesso a página de Login
        Quando clico em cadastre-se     
        E submeto o meu cadastro:
            | email          | abcdefg2            |
            | senha          | pwd123              |
            | senha_confirma | pwd123              |
        Então devo ver a mensagem com: "Usuário já cadastrado"




    
