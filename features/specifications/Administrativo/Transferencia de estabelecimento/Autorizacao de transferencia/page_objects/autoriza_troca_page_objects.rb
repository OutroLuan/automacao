class Selecionar_estabelecimento < SitePrism::Section
  element :marcar_todos, "button[title='Marcar todas as solicitações.']"
end

class PagAutorizacaoTroca < SitePrism::Page
  element :empresa_destino, "select[id='empresaDestinoAutorizacaoTransf']"
  element :empresa_origem, "select[id='empresaOrigemAutorizacaoTransf']"
  element :estabelecimento, "input[id='estabelecimentoAutorizacaoTransfFiltro_input']"
  element :botao_pesquisar, "button[id='botaoPesquisar']"
  section :Selecionar_estabelecimento, Selecionar_estabelecimento, "#resultadoPesquisa_head > tr:nth-child(1) > th:nth-child(1) > span:nth-child(1)"
  element :botao_autorizar, "button[id='botaoAutorizar']"
end
