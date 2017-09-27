#language: pt
#encoding: utf-8
@menus
@modulo_autoriza_troca
Funcionalidade: Autorização para troca de mando do compartilhamento

Contexto: logar e acessar a pagina de autorização de transferencia
  Dado que eu acesse o SGV
  E realizar o login
  E acessar a pagina de autorização de troca de responsabilidade

@autoriza_tendencia_rofer
Cenario: Autorização de troca de responsabilidade entre Tendencia MS e Rofer DF

@autoriza_rofer_tendencia
Cenario: Autorização de troca de responsabilidade entre Rofer DF e Tendencia MS

@autoriza_tendencia_redeflex
Cenario: Autorização de troca de responsabilidade entre Tendencia MS e Redeflex MT

@autoriza_redeflex_tendencia
Cenario: Autorização de troca de responsabilidade entre Redeflex MT e Tendencia MS

@autoriza_redeflex_logexpress
Cenario: Autorização de troca de responsabilidade entre Redeflex MT e Log Express SP

@autoriza_logexpress_redeflex
Cenario: Autorização de troca de responsabilidade entre Log Express SP e Redeflex MT
  Dado que eu escolha a empresa de origem log express para autorização
  E que eu escolha a empresa de destino redeflex para autorização
  E que eu pesquise por solicitações de troca
  E selecionar as solicitações
  Quando eu clicar em autorizar
  E confirmar a autorização
  Então a autorização é efetivada com sucesso
