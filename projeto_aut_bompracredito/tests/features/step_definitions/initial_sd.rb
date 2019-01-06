Dado('que acesso a {string} desejada') do |pagina|
  init_page.access_main_page(pagina)
end

Então('a {string} deverá ser apresentada') do |pagina|
  init_page.verify_main_url(pagina)
end
