Before do
  @PagPesquisaPublicacao = PagPesquisaPublicacao.new
  @pesquisaPublicacaoVazia = 'Nenhum registro encontrado'
  @codigoPublicacao = '870'
  @visualizacaoPublicacao = ['Todos','Impresso','POS']
  @destinoPublicacao = ['Todos','Mensagem POS','Merchan','Notícia']
  @tituloPublicacao = 'Teste'
  @dataInicioPublicacao = '03/07/2017'
  @dataFimPublicacao = '22/10/2012'
  @tipoPublicacao = ['Diária','Frequência','Periodicidade']
  @periodicidadePublicacao = ['Anual','Bimestral','Mensal','Quinzenal','Semanal','Semestral','Trimestral']
  @ativoPublicacao = ['Todos','Sim','Não']
end

Before '@pesquisa_publicacao_data_inicio_fim' do
  @dataFimPublicacao = '07/12/2017'
end

Before '@pesquisa_publicacao_tipo' do
  @qtdPublicacoes = ['91','582','34']
end

Before '@pesquisa_publicacao_ativo' do
  @qtdPublicacoes = ['870','749','121']
end

Before '@pesquisa_disponibilidade_fornecedor' do
  @fornecedorDisponibilidade = 'VIVO'
  @dataIniDisponibilidade = @dataInicioPublicacao
  @dataFimDisponibilidade = '07/12/2017'
end

Before '@modulo_cadastro_publicacao' do
  @PagPesquisaPublicacao = PagPesquisaPublicacao.new
  @PagCadastroPublicacao = CadastroPublicacao.new
  @tituloMerchan = '760 - Teste'
  @dataInicioPublicacao = '25/08/2017'
  @frequenciaPublicacao = '30'
  @publicacaoGravada = 'Publicação gravada com sucesso'
  @dataPublicadaoConcluida = 'Data publicação incluída com sucesso!'
  @datasPublicacao = ['01/09/2017','02/09/2017','03/09/2017','04/09/2017']
end
