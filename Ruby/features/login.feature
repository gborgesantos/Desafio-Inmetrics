#language:pt
@desafio
@login
Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que possa ter acesso a área interna do site inmrobo.tk

    @login_usuario
    Cenário: Login do usuário

        Dado que acesso o site 
        Quando submeto minhas credenciais com: "guiteste9" e "pwd123"
        Então devo ser redirecionado para a área logada

    @tentativa_login
    Esquema do Cenário: Tentativa de Login

        Dado que acesso o site 
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a seguinte mensagem de erro: "ERRO! Usuário ou Senha inválidos"
        
        Exemplos:
        |email                | senha    |  
        |guiteste9            | abc123   |
        |gui1@gmail.com       | asd123   |
       
