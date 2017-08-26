#language: pt
#encoding: utf-8

Dado(/^que eu acesse o SGV$/) do
	visit '/'
	popup = page.driver.browser.window_handles.last
	page.driver.browser.switch_to.window(popup)
end

Quando(/^eu preencher o login e senha$/) do
	sleep 2
	@login = Login.new
	@login.wait_for_usuario
	@login.usuario.set(@usuario)
	@login.senha.set(@senha)
end

Quando(/^tentar entrar$/) do
	@login.botao_entrar.click
end

Então(/^o sistema deverá exibir a mensagem "([^"]*)"$/) do |mensagem|
	expect(page).to have_content mensagem
end

Então(/^o sistema deverá redirecionar para a pagina principal$/) do
  @home = Home.new
  @home.wait_for_barra_menu
  expect(@home).to have_barra_topo
  expect(@home).to have_barra_menu
end


Quando(/^realizar o login$/) do
	expect(page).to have_content @label_usuario
	@login.usuario.set(@usuarioSGV)
	@login.senha.set(@senhaSGV)
	@login.botao_entrar.click
	@login.wait_until_loadbar_invisible
end

E(/^que tenha um usuario bloqueado$/) do
	puts '[SYSTEM] - ATUALIZANDO DADOS DE USUARIO'
	plsql.usuario.update(:senha_web => @senhaWeb,
											 :bloqueado => 1,
											 :situacao => 1,
											 :data_expiracao_web => @dataExpiracao,
											 :data_ult_acesso_web => @dataAtual,
											 :where => {:id => 629892})
	plsql.commit
end

E(/^tenha um login com periodo de inatividade$/) do
	puts '[SYSTEM] - ATUALIZANDO DADOS DE USUARIO'
	plsql.usuario.update(:senha_web => @senhaWeb,
	 										 :bloqueado => 0,
											 :situacao => 1,
											 :data_expiracao_web => @dataExpiracao,
											 :data_ult_acesso_web => @dataUltAcesso,
											 :where => {:id => 629892})
	plsql.commit
end

E(/^tenha um usuario inativo$/) do
	puts '[SYSTEM] - ATUALIZANDO DADOS DE USUARIO'
	plsql.usuario.update(:senha_web => @senhaWeb,
	 										 :bloqueado => 0,
											 :situacao => 2,
											 :data_expiracao_web => @dataExpiracao,
											 :data_ult_acesso_web => @dataAtual,
											 :where => {:id => 629892})
	plsql.commit
end

Quando(/^realizar o login 2.0$/) do
	puts "[SYSTEM] - ENTRANDO NO FOR"
	for i in 0 .. @logins.size
		puts "[SYSTEM] - FOR NA POSIÇÃO #{i}"
		puts "[SYSTEM] - INICIANDO LOGIN"
		@login.usuario.set(@logins[i])
		puts "[SYSTEM] - PREENCHENDO LOGIN: " + @logins[i]
		@login.senha.set(@senhas[i])
		puts "[SYSTEM] - PREENCHENDO SENHA: " + @senhas[i]
		@login.botao_entrar.click
		puts "[SYSTEM] - REALIZANDO TENTATIVA DE LOGIN"

		puts "[SYSTEM] - ENTRANDO NA VALIDAÇÃO"
		@login.wait_until_loadbar_invisible
		if(page.has_selector?(:xpath, "//div[@id='container2']", :text => @msg_login))
			puts "[SYSTEM] - EXISTE A MSG, INCREMENTANDO LOOP"
		else
			puts "[SYSTEM] - NÃO EXISTE A MSG, SAINDO DO LOOP"
			break
		end
	end
end
