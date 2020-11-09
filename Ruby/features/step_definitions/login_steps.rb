Dado("que acesso o site") do
  visit "/"
end

Quando("submeto minhas credenciais com: {string} e {string}") do |email, password|
  find("input[name='username']").set email

  find("input[name='pass']").set password
  click_on "Entre"
end

Então("devo ser redirecionado para a área logada") do
end

Então("devo ver a seguinte mensagem de erro: {string}") do |expect_message|
  alert = find(".alert-danger")
  expect(alert.text).to have_text expect_message
end
