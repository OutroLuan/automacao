Before do
	@usuarioSGV = "luan.souza"
	@senhaSGV = "Alcione110593"
	@logins = ['jhonatan.integrado']
	@senhas = ['jhow']
	@msg_login = "Já existe um usuário autenticado com estas credenciais!"
	@label_usuario = 'Usuário:'
end

Before '@menus' do
	@paginas = Paginas.new
	@login = Login.new
end

Before '@cadastro_usuario' do
	@pagUsuario = PagUsuario.new
	@dadosUsuario = DadosUsuario.new
	@enderecoUsuario = EnderecoUsuario.new
	@acessoUsuario = AcessoUsuario.new
end


After '@logout' do
	if (page.has_selector?('.ui-dialog-titlebar'))
		page.find("a.ui-dialog-titlebar-close").click
		puts '[SYSTEM] - Fechando Dialog'
		sleep 1
		@paginas.Sair.BotaoSair.click
		click_button('Sim')
		sleep 2
		puts "[SYSTEM] - Logout..."
	else
		sleep 1
		@paginas.Sair.BotaoSair.click
		click_button('Sim')
		sleep 2
		puts "[SYSTEM] - Logout..."
	end
end
