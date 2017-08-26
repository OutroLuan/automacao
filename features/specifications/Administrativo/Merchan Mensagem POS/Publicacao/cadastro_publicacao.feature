#language: pt
#encoding: utf-8
@menus
@modulo_cadastro_publicacao
Funcionalidade: cadastro de publicações de merchan e bom dia POS

Contexto: logar e acessar a ppagina de publicação
  Dado que eu acesse o SGV
  E realizar o login
  E acessar a pagina de publicação
  E criar uma nova publicação

@cadastro_publicacao_frequencia
Cenario: cadastrar uma publicação do tipo frequencia, sem propriedade
  E preencher o titulo da mensagem
  E escolher o tipo de publicação frequencia
  E preencher a frequencia
  E preencher a data de inicio
  E gravar a publicação
  Então a publicação é cadastrada com sucesso

@cadastro_publicacao_periodicidade
Cenario: cadastrar uma publicação do tipo periodicidade, sem propriedade
  E preencher o titulo da mensagem
  E escolher o tipo de publicação periodicidade
  E preencher a data de inicio
  E escolher a periodicidade da publicacao mensal
  E escolher os dias de publicação
  E gravar a publicação
  Então a publicação é cadastrada com sucesso

@cadastro_publicacao_diaria
Cenario: cadastrar uma publicação do tipo diaria, sem propriedade
  E preencher o titulo da mensagem
  E escolher o tipo da publicação diaria
  E preencher a data de publicação
