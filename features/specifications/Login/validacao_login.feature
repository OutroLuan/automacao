#language: pt
#encoding: utf-8
@modulo_login
Funcionalidade: Validações de Autenticação

@menus @login_nulo
Cenário: Login com campos nulos
	Dado que eu acesse o SGV
	Quando eu preencher o login e senha
	E tentar entrar
	Então o sistema deverá exibir a mensagem "Usuário não encontrado"

@menus @login_invalido
Cenário: Login com campos inválidos
	Dado que eu acesse o SGV
	Quando eu preencher o login e senha
	E tentar entrar
	Então o sistema deverá exibir a mensagem "Usuário não encontrado"

@menus @carrega_dados @login_bloqueado
Cenário: Login usuário bloqueado

	Dado que eu acesse o SGV
	E que tenha um usuario bloqueado
	Quando eu preencher o login e senha
	E tentar entrar
	Então o sistema deverá exibir a mensagem "Usuário bloqueado"

@menus @carrega_dados @login_inativo
Cenário: Login com usuário inatividade

	Dado que eu acesse o SGV
	E tenha um usuario inativo
	Quando eu preencher o login e senha
	E tentar entrar
	Então o sistema deverá exibir a mensagem "Usuário não encontrado"

@menus @carrega_dados @periodo_inatividade
Cenário: Login com periodo de inatividade

	Dado que eu acesse o SGV
	E tenha um login com periodo de inatividade
	Quando eu preencher o login e senha
	E tentar entrar
	Então o sistema deverá exibir a mensagem "Tempo de inatividade ultrapassou o limite máximo permitido. O usuário será bloqueado, contate a administração do Sistema!"

@menus @login_incorreto
Cenário: Login com senha incorreta

	Dado que eu acesse o SGV
	Quando eu preencher o login e senha
	E tentar entrar
	Então o sistema deverá exibir a mensagem "Usuário e/ou senha inválidos!"

@menus @login_sucesso @logout
Cenário: Login com sucesso

	Dado que eu acesse o SGV
	Quando eu preencher o login e senha
	E tentar entrar
	Então o sistema deverá redirecionar para a pagina principal

@menus @login_logado
Cenário: Login com usuário já autenticado

	Dado que eu acesse o SGV
	E que esteja logado
	Quando eu sair sem encerrar a sessão
	E tentar entrar
	Então o sistema deverá exibir a mensagem "Já existe um usuário autenticado com estas credenciais!"
