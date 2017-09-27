class Selecionar_estabelecimento < SitePrism::Section
  element :checkbox, "input[title='Selecionar.']"
end

class PagSolicitacaoTroca < SitePrism::Page
  element :empresa_destino, "select[id='prefEmpresa']"
  element :empresa_origem, "select[id='empresaSolicAutTransf']"
  element :estabelecimento, "input[id='estabelecimentoSolicAutTransfFiltro_input']"
  element :botao_pesquisar, "button[id='botaoPesquisar']"
  section :Selecionar_estabelecimento, Selecionar_estabelecimento, "tr.ui-widget-content > td:nth-child(1)"
  element :botao_gravar, "button[id='botaoGravarPesquisa']"
end
