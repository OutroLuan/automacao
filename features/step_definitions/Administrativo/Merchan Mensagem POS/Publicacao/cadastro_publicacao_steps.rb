Dado(/^criar uma nova publicação$/) do
  @PagPesquisaPublicacao.Botoes.botao_novo.click
  @paginas.wait_until_modal_load_invisible
end

Dado(/^preencher o titulo da mensagem$/) do
  @PagCadastroPublicacao.Mensagem.filtro_titulo.set @tituloMerchan
  expect(page).to have_content @tituloMerchan
  @PagCadastroPublicacao.Mensagem.filtro_titulo.native.send_keys(:enter)
end

Dado(/^escolher o tipo de publicação frequencia$/) do
  expect(@PagCadastroPublicacao.Publicacao).to have_content  @tipoPublicacao[1]
end

Dado(/^preencher a data de inicio$/) do
  @PagCadastroPublicacao.Publicacao.data_inicio.click
  @PagCadastroPublicacao.Publicacao.data_inicio.set @dataInicioPublicacao
  @PagCadastroPublicacao.Publicacao.data_inicio.native.send_keys(:tab)
  @paginas.wait_until_modal_load_invisible
end

Dado(/^preencher a frequencia$/) do
  @PagCadastroPublicacao.Publicacao.frequencia.click
  @PagCadastroPublicacao.Publicacao.frequencia.set @frequenciaPublicacao
end

Dado(/^gravar a publicação$/) do
  @PagCadastroPublicacao.BotoesCadastro.botao_gravar.click
  @paginas.wait_until_modal_load_invisible
end

Então(/^a publicação é cadastrada com sucesso$/) do
  expect(page).to have_content @publicacaoGravada
end

Dado(/^escolher o tipo de publicação periodicidade$/) do
  sleep 2
  @PagCadastroPublicacao.Publicacao.tipo_publicacao.click
  @PagCadastroPublicacao.Publicacao.tipo_publicacao.select @tipoPublicacao[2]
  @PagCadastroPublicacao.Publicacao.tipo_publicacao.native.send_keys(:tab)
  @paginas.wait_until_modal_load_invisible
end

Dado(/^escolher a periodicidade da publicacao mensal$/) do
  #@PagCadastroPublicacao.Publicacao.periodicidade.click
  @PagCadastroPublicacao.Publicacao.periodicidade.select @periodicidadePublicacao[2]
  @PagCadastroPublicacao.Publicacao.periodicidade.native.send_keys(:tab)
  @paginas.wait_until_modal_load_invisible
end

Dado(/^escolher os dias de publicação$/) do
  @PagCadastroPublicacao.Publicacao.dom.click
  @PagCadastroPublicacao.Publicacao.qua.click
  @PagCadastroPublicacao.Publicacao.sab.click
  sleep 5
end

Dado(/^escolher o tipo da publicação diaria$/) do
  sleep 2
  @PagCadastroPublicacao.Publicacao.tipo_publicacao.click
  @PagCadastroPublicacao.Publicacao.tipo_publicacao.select @tipoPublicacao[0]
  @PagCadastroPublicacao.Publicacao.tipo_publicacao.native.send_keys(:tab)
  @paginas.wait_until_modal_load_invisible
  sleep 10
end

Dado(/^preencher a data de publicação$/) do
  @PagCadastroPublicacao.Publicacao.data_publicacao.click
end

=begin
Dado(/^$/) do

end

Então(/^$/) do

end
=end
