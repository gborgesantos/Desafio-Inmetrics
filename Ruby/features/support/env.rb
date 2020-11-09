require "capybara"
require "capybara/cucumber"

#require_relative "actions"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10  #aumento o tempo de espera pra achar o elemento, padrão é 2s
  config.app_host = "http://www.inmrobo.tk/accounts/login" #reconhece a minha URL padrão do sistema, que nos códigos
  #vai ficar como "/"
end
