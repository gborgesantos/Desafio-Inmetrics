## Teste Inmetrics

Versões utilizadas:
------------------------
ChromeDriver 85.0.4183.83
Ruby: ruby 2.5.8p224

Gems utilizadas:
-----------------
capybara
cucumber
rspec
selenium-webdriver


Estrutura de pastas do projeto
------------------------------
Features:
	 pasta principal para armazenar as features que por sua vez contém os bdds das apis.
	
	steps_definitions:
	   objetivo dessa pasta é armazenar os steps em ruby para os testes 
	
	 
Support: Algumas pastas e arquivos foram utilizados como destacado abaixo:
 env.rb: este arquivo é utilizado para fazer o require das gems, e também possui a configuração do apphost e max_wait_time
	     default_driver: possui a configuração do selenium_chrome
		        apphost: contém a url principal do site para realizar os testes web
        default_max_wait_time: Tempo de espera
		    
 hooks.rb:
	Este arquivo faz a referência para as classes tanto para web quanto para api instanciando as classes no Before 
	e permitindo as mesmas serem utilizadas em qualquer parte do projeto
	

Execuções para Web
-------------------------

WEB
Tag principal para execução de todos os testes: @desafio
cucumber

Tag principal para execução dos testes web de login: @login, 
Para executar os testes web devemos informar o comando abaixo:
cucumber -t @login

Tag principal para execução dos testes web de cadastro de usuário: @cadastro
Para executar os testes web devemos informar o comando abaixo:
cucumber -t @cadastro
