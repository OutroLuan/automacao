#language: pt
#encoding: utf-8
@menus
@modulo_pesquisa_publicacao
Funcionalidade: Pesquisa de publicações de merchan e bom dia POS

Contexto: logar e acessar a pagina de publicação
  Dado que eu acesse o SGV
  E realizar o login
  E acessar a pagina de publicação

@pesquisa_publicacao_sem_filtros
Cenario: pesquisar publicações sem utilizar filtros
  E pesquisar as publicações
  Então são listadas todas as publicações feitas

@pesquisa_publicacao_codigo
Cenario: pesquisar publicações utilizando o filtro de código de publicação
  E preencher o codigo da publicacao
  E pesquisar as publicações
  Então é listada a publicação referente ao código

@pesquisa_publicacao_visualizacao
Cenario: pesquisar publicações utilizando filtro de visualizações
  E escolher o filtro visualizacao Impresso
  E pesquisar as publicações
  Então são listadas as publicacoes impressas

@pesquisa_publicacao_destino
Cenario: pesquisar publicações utilizando filtro de destino
  E escolher o filtro destino Mensagem POS
  E pesquisar as publicações
  Então são listadas as publicacoes com destino a POS

@pesquisa_publicacao_titulo
Cenario: pesquisar publicações utilizando filtro de titulo
  E preencher o titulo da publicação
  E pesquisar as publicações
  Então são listadas as publicações com este titulo

@pesquisa_publicacao_periodicidade
Cenario: pesquisar publicações utilizando filtro de periodicidade
  E escolher a periodicidade semanal
  E pesquisar as publicações
  Então são listadas as publicações com esta periodicidade

@pesquisa_publicacao_data_inicio
Cenario: pesquisar publicações utilizando filtro de data inicio
  E preencher a data de inicio da publicação
  E pesquisar as publicações
  Então são listadas as publicações com essa data de inicio

@pesquisa_publicacao_data_fim
Cenario: pesquisar publicações utilizando filtro de data fim
  E preencher a data fim da publicação
  E pesquisar as publicações
  Então são listadas as publicações com essa data fim

@pesquisa_publicacao_data_inicio_fim
Cenario: pesquisar publicações utilizando filtro de data inicio e data fim
  E preencher a data de inicio da publicação
  E preencher a data fim da publicação
  E pesquisar as publicações
  Então são listadas as publicações que estão dentro deste periodo

@pesquisa_publicacao_tipo
Cenario: pesquisar publicações utilizando filtro tipo de publicação
  E escolher o tipo de publicação
  E pesquisar as publicações
  Então são listadas as publicações deste tipo apenas

@pesquisa_publicacao_ativo
Cenario: pesquisar publicações utilizando filtro de ativo todos
  E escolher o ativo todos
  E pesquisar as publicações
  Então são listadas as publicações ativas e inativas

@pesquisa_disponibilidade_fornecedor
Cenario: pesquisar disponibilidade de publicações por data
  E acessar a pesquisa de disponibilidade
  E escolher o fornecedor
  E preencher a data de inicio da disponibilidade
  E preencher a data final da disponibilidade
  E pesquisa a disponibilidade
  Então é mostrado a calendario de disponibilidade das publicações
