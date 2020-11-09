Dado("que acesso a página de Login") do
  visit "/"
end

Quando("clico em cadastre-se") do
  find(".txt2.bo1").click
end

Quando("clico em cadastre-se no cabeçalho") do
  find("li.nav-item a[href*='signup']").click
end

Quando("submeto o meu cadastro:") do |table|
  user = table.rows_hash
  find("input[name='username']").set user[:email]
  find("input[name='pass']").set user[:senha]
  find("input[name='confirmpass']").set user[:senha_confirma]
  click_on "Cadastrar"
end

Então("devo ser redirecionado para o login") do
  expect(page).to have_css ".login100-form-title"
end

Então("devo ver a mensagem: {string}") do |expect_css|
  expect(page).to have_css expect_css
end

Então("devo ver a mensagem de erro: {string}") do |expect_message|
  alert = find(".p-t-13 .m-t-17")
  expect(alert.text).to eql expect_message
end

Então("devo ver a mensagem com: {string}") do |expect_message|
  alert = find(".p-t-10 .m-t-17")
  expect(alert.text).to eql expect_message
end
