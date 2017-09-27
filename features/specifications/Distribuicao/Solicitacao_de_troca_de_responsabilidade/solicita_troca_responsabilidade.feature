#language: pt
#encoding: utf-8
@menus
@modulo_solicitacao_troca
Funcionalidade: Solicitação para troca de mando do compartilhamento

Contexto: logar e acessar a pagina de solicitação
  Dado que eu acesse o SGV
  E realizar o login
  E acessar a pagina de solicitação de troca de responsabilidade

@solicita_tendencia_rofer
Cenario: Solicitação de troca de responsabilidade entre Tendencia MS e Rofer DF

@solicita_rofer_tendencia
Cenario: Solicitação de troca de responsabilidade entre Rofer DF e Tendencia MS

@solicita_tendencia_redeflex
Cenario: Solicitação de troca de responsabilidade entre Tendencia MS e Redeflex MT

@solicita_redeflex_tendencia
Cenario: Solicitação de troca de responsabilidade entre Redeflex MT e Tendencia MS

@solicita_redeflex_logexpress
Cenario: Solicitação de troca de responsabilidade entre Redeflex MT e Log Express SP

@solicita_logexpress_redeflex
Cenario: Solicitação de troca de responsabilidade entre Log Express SP e Redeflex MT
  Dado que eu escolha a empresa de trabalho redeflex
  E que eu escolha a empresa de origem log Express
  E preencha um estabelecimento compartilhado entre as duas empresas
  E pesquise este estabelecimento compartilhado
  E selecione este estabelecimento compartilhado
  Quando eu clicar em gravar solicitação de compartilhamento
  E confirmar a solicitação de compartilhamento
  Então a solicitação é feita com sucesso
