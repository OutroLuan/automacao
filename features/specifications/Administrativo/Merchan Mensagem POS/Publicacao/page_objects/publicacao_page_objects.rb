class TipoConsulta < SitePrism::Section
  element :tipo_publicacao, "input[value='PUBLICACAO']"
  element :tipo_disponibilidade, "input[value='DISPONIBILIDADE']"
end

class Filtros < SitePrism::Section
#pagina de publicação
  element :filtro_codigo, "input[id='primeiroFocoPesquisa']"
  element :filtro_titulo, "input[id='merchanPublicacao_input']"
  element :filtro_visualizacao, "select[id='visualizacaoPublicacao']"
  element :filtro_periodicidade, "select[id='periodicidadePublicacao']"
  element :filtro_tipo_publicacao, "select[id='tipoPublicacao']"
  element :filtro_destino, "select[id='destinoPublicacao']"
  element :filtro_data_inicio, "input[id='dataInicioPublicacao']"
  element :filtro_data_fim, "input[id='dataFimPublicacao']"
  element :filtro_ativo, "select[id='ativoPublicacao']"
  element :toggler, "a[id='searchFormId_toggler']"

#pagina de disponibilidade
  element :filtro_data_ini_disponibilidade, "input[id='dataIniDisponibilidadeMerchan']"
  element :filtro_data_fim_disponibilidade, "input[id='dataFimDisponibilidadeMerchan']"
  element :filtro_forncederos_disponibilidade, "select[id='fornecedorDisponibilidadeMerchan']"
end

class Botoes < SitePrism::Section
#pagina de publicação
  element :botao_pesquisar, "button[id='botaoPesquisar']"
  element :botao_limpar, "button[id='limparPublicacao']"
  element :botao_novo, "button[id='botaoNovo']"

#pagina de disponibilidade
  element :botao_pesquisar_disponibilidade, "button[id='botaoPesquisarDisponibilidade']"
  element :botao_limpar_disponibilidade, "button[id='limparDisponibilidade']"
end

class Resultado < SitePrism::Section

end

class PagPesquisaPublicacao < SitePrism::Page
  section :TipoConsulta, TipoConsulta, "form[id='j_idt1365']"
  section :Filtros, Filtros, "div[id='searchFormId']"
  section :Botoes, Botoes, "div[class='botoes']"
  section :Resultado, Resultado, "div[id='resultado']"
  element :filtro_titulo_autocomplete, "div[id='merchanPublicacao_panel']"
end

class Mensagem < SitePrism::Section
  element :filtro_titulo, "input[id='formEdicao:tabPublicaoE:merchanPublicacaoEdicaoFiltro_input']"
  element :auto_complete, "div[id='formEdicao:tabPublicaoE:merchanPublicacaoEdicaoFiltro_panel']"
end

class Publicacao < SitePrism::Section
  element :data_inicio, "input[id='formEdicao:tabPublicaoE:dataInicioPublicacaoEdicao']"
  element :tipo_publicacao, "select[id='formEdicao:tabPublicaoE:tipoPublicacaoEditar']"
  element :data_publicacao, "input[id='formEdicao:tabPublicaoE:dataPublicacaoEdicao']"
  element :periodicidade, "select[id='formEdicao:tabPublicaoE:periodicidadePublicacaoEditar']"
  element :adicionar_data_publicacao, "a[id='formEdicao:tabPublicaoE:j_idt1656']"
  element :frequencia, "input[id='formEdicao:tabPublicaoE:frequenciaEdicao']"

  #dias de publicacao
  element :dom, "input[title='Domingo.']"
  element :seg, "input[title='Segunda-feira.']"
  element :ter, "input[title='Terça-feira.']"
  element :qua, "input[title='Quarta-feira.']"
  element :qui, "input[title='Quinta-feira.']"
  element :sex, "input[title='Sexta-feira.']"
  element :sab, "input[title='Sábado.']"
end

class TipoDados < SitePrism::Section
  element :tipo_filtros, "input[value='FILTROS']"
  element :tipo_arquivo, "input[value='ARQUIVO']"
end

class PropriedadeFiltros < SitePrism::Section

end

class ArquivoImportacao < SitePrism::Section

end

class BotoesCadastro < SitePrism::Section
  element :botao_gravar, "button[id='formEdicao:botaoGravar']"
  element :botao_fechar, "button[id='formEdicao:botaoCancelar']"
end

class CadastroPublicacao < SitePrism::Page
  section :Mensagem, Mensagem, "div[id='formEdicao:tabPublicaoE:informacoesMensagem']"
  section :Publicacao, Publicacao, "div[id='formEdicao:tabPublicaoE:informacoesPublicacao']"
  section :TipoDados, TipoDados, "div[id='formEdicao:tabPublicaoE:panelTipoDados']"
  section :PropriedadeFiltros, PropriedadeFiltros, "div[id='formEdicao:tabPublicaoE:propriedadesPublicacaoPanel']"
  section :ArquivoImportacao, ArquivoImportacao, "div[id='formEdicao:tabPublicaoE:arquivoImportacaoPublicacao']"
  section :BotoesCadastro, BotoesCadastro, "div[style='margin-top: 5px !important; position: absolute; bottom: 0; height:40px; width: 97%; border-top-width: 2px; border-top-style: solid; border-top-color: #DDDDDD;']"
  element :bota_fechar2, "a[class='ui-dialog-titlebar-icon ui-dialog-titlebar-close ui-corner-all']"
end
