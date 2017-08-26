class Login < SitePrism::Page
	element :usuario, "input[id='usrNome']"
	element :senha, "input[id='password']"
	element :botao_entrar, ".botaoEntrar"
end
