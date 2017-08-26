class Mensagem < SitePrism::Section
	element :div, "#container2"
end

class Cadastro < SitePrism::Page
	element :titulo, "select[id='gender-select']"
	element :primeiro_nome_cliente, "input[id='first-name-input']"
	element :ultimo_nome_cliente, "input[id='last-name-input']"
	element :cpf_cliente, "input[id='personal-identifier-input']"
	element :rua, "input[id='street-input']"
	element :numero_casa, "input[id='street-number-input']"
	element :cep, "input[id='postal-code-input']"
	element :cidade, "input[id='city-input']"
	element :email, "input[id='email-input']"
	element :telefone, "input[id='phone-number-input']"
	element :senha, "input[id='password-input']"
	element :confirma_senha, "input[id='password-confirmation-input']"
end

class Login < SitePrism::Page
	element :usuario, "input[id='usrNome']"
	element :senha, "input[id='password']"
	element :botao_entrar, ".botaoEntrar"
	element :loadbar, "#aguarde > img"
	section :search, Mensagem, '#container2'
end

class Home < SitePrism::Page
	element :barra_topo, "#topo"
  	element :barra_menu, ".barra-menu-conf"
  	element :barra_rodape, "#bottom > div:nth-child(1)"
end

class SectionSair < SitePrism::Section
	element :BotaoSair, 'i.icon-sair'
end

class Paginas < SitePrism::Page
	section :Sair, SectionSair, 'div.logOut'
	element :menu_principal, "#menuPrincipal"
	element :modal_load, :xpath, "//div[@id='statusModalShow']"
	element :empresa_trabalho, '#prefEmpresa'
end
