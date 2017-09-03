class Acoes < SitePrism::Section
  element :visualizar, "a[title='Visualizar os dados.']"
  element :editar, "a[title='Editar o registro.']"
  element :excluir, "a[title='Excluir o registro.']"
  element :auditar, "a[title='Acessar as informações de auditoria.']"
  element :bloquear, "a[title='Bloquear o registro.']"
  element :desbloquear, "a[title='Desbloquear o registro.']"
end

class Registro < SitePrism::Section
  section :Acoes, Acoes, "td:nth-child(1)"
  element :codigo, "td:nth-child(2) > span:nth-child(1)"
  element :tipo_terminal, "td:nth-child(3) > span:nth-child(1)"
  element :numero_serie, "td:nth-child(4) > span:nth-child(1)"
  element :bloqueado, "td:nth-child(5) > span:nth-child(1)"
  element :tipo_proprietario, "td:nth-child(6) > span:nth-child(1)"
  element :proprietario, "td:nth-child(7) > span:nth-child(1)"
  element :modelo, "td:nth-child(8) > span:nth-child(1)"
  element :negociado_para, "td:nth-child(9) > span:nth-child(1)"
  element :alocado_para, "td:nth-child(10) > span:nth-child(1)"
  element :blacklist, "td:nth-child(11) > span:nth-child(1)"
  element :data_inclusao, "td:nth-child(12) > span:nth-child(1)"
  element :data_alteracao, "td:nth-child(13) > span:nth-child(1)"
end

class BotoesExportar < SitePrism::Section
  element :csv, "a[title='Exportar o resultado da consulta para CSV. Atalho: Ctrl+Shift+T.']"
  element :pdf, "a[title='Exportar o resultado da consulta para PDF. Atalho: Ctrl+Shift+P.']"
end

class Resultado < SitePrism::Section
  section :Registro, Registro, "tr.ui-widget-content:nth-child(1)"
  section :BotoesExportar, BotoesExportar, "div[class='botoesExportarDados']"
  element :quantidade_registros, "div[class='ui-datatable-footer']"
end

class Botoes < SitePrism::Section
  element :botao_pesquisar, "button[id='botaoPesquisar']"
  element :botao_limpar, "button[id='botaoLimpar']"
  element :botao_novo, "button[id='botaoNovo']"
end

class Filtros < SitePrism::Section
  element :codigo, "input[title='Preencha o código do terminal.']"
  element :tipo_terminal, "select[id='tipoTerminal']"
  element :numero_serie, "input[id='numeroSerieTerminal']"
  element :ativo, "select[id='ativoTerminal']"
  element :bloqueado, "select[id='bloqueadoTerminal']"
  element :tipo_proprietario, "select[id='tipoProprietarioTerminal']"
  element :data_entrada, "input[id='dataEntradaTerminal']"
  element :data_compra, "input[id='dataCompraTerminal']"
  element :garantia, "input[id='garantiaTerminal']"
  element :modelo, "select[id='modeloTerminal']"
  element :ddd, "input[id='celularDDDConsulta']"
  element :celular, "input[id='numeroCelularConsulta']"
  element :blacklist, "select[id='blacklistTerminal']"
  element :min_max_filtros, "a[id='searchFormId_toggler']"
end

class PagPesquisaTerminal < SitePrism::Page
  section :Filtros, Filtros, "div[id='filtro']"
  section :Botoes, Botoes, "div[class='botoes']"
  section :Resultado, Resultado,"div=[id='resultadoPesquisa']"
end

class PagCadastroTerminal < SitePrism::Page
  element :tipo_terminal, "select[id='formEdicao:tipoTerminalTerminalEdicao']"
  element :numero_serie, "input[id='formEdicao:numeroSerieTerminalEdicao']"
  element :garantia, "input[id='formEdicao:garantiaTerminalEdicao']"
  element :data_entrada, "input[id='formEdicao:dataEntradaTerminalEdicao']"
  element :data_compra, "input[id='formEdicao:dataCompraTerminalEdicao']"
  element :nota_fiscal, "input[id='formEdicao:notaFiscalTerminalEdicao']"
  element :fabricante, "select[id='formEdicao:fabricanteModeloEdicao']"
  element :modelo, "select[id='formEdicao:modeloTerminalselct']"
  element :id_aplicativo, "select[id='formEdicao:aplicativoTerminalEdicao']"
  element :tipo_proprietario, "select[id='formEdicao:tipoProprietarioTerminalEdicao']"
  element :proprietario_select, "select[id='formEdicao:integradorTerminalEdicao']"
  element :proprietario_input, "input[id='formEdicao:empresaTerminalEdicaoFiltro_input']"
  element :botao_gravar, "button[id='formEdicao:botaoGravar']"
  element :botao_fechar, "button[id='formEdicao:botaoFechar']"
end
