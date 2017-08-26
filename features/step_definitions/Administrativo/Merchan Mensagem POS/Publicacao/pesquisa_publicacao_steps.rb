Dado(/^acessar a pagina de publicação$/) do
  @home = Home.new
  @home.wait_for_barra_menu
  expect(@home).to have_barra_topo
  expect(@home).to have_barra_menu

  @paginas.menu_principal.click
  click_link 'Administrativo'
  click_link 'Merchan/Mensagem POS'
  click_link 'Publicação'
  @paginas.wait_until_modal_load_invisible
end

Dado(/^pesquisar as publicações$/) do
  puts '[SYSTEM] - PESQUISANDO'
  @PagPesquisaPublicacao.Botoes.botao_pesquisar.click
  @paginas.wait_until_modal_load_invisible
end

Então(/^são listadas todas as publicações feitas$/) do
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  sleep 10
end

Dado(/^preencher o codigo da publicacao$/) do
  puts '[SYSTEM] - PESQUISA COM FILTRO DE CÓDIGO: ' + @codigoPublicacao
  #@PagPesquisaPublicacao.Filtros.filtro_codigo.click
  @PagPesquisaPublicacao.Filtros.filtro_codigo.set @codigoPublicacao
  @paginas.wait_until_modal_load_invisible
end

Então(/^é listada a publicação referente ao código$/) do
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  expect(@PagPesquisaPublicacao.Resultado).to have_content @codigoPublicacao
  sleep 10
end

Dado(/^escolher o filtro visualizacao Impresso$/) do
  puts '[SYSTEM] - PESQUISA COM FILTRO VISUALIZAÇÃO: ' + @visualizacaoPublicacao[1]
  @PagPesquisaPublicacao.Filtros.filtro_visualizacao.select @visualizacaoPublicacao[1]
  @paginas.wait_until_modal_load_invisible
end

Então(/^são listadas as publicacoes impressas$/) do
  #expect(@PagPesquisaPublicacao.Resultado).not_to have_content (@visualizacaoPublicacao[0])
  #expect(@PagPesquisaPublicacao.Resultado).not_to have_content (@visualizacaoPublicacao[2])
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  expect(@PagPesquisaPublicacao.Resultado).to have_content (@visualizacaoPublicacao[1])
  sleep 10
end

Dado(/^escolher o filtro destino Mensagem POS$/) do
  puts '[SYSTEM] - PESQUISA COM FILTRO DESTINO: ' + @destinoPublicacao[1]
  @PagPesquisaPublicacao.Filtros.filtro_destino.select @destinoPublicacao[1]
  @paginas.wait_until_modal_load_invisible
end

Então(/^são listadas as publicacoes com destino a POS$/) do
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  expect(@PagPesquisaPublicacao.Resultado).to have_content (@destinoPublicacao[1])
  sleep 10
end

Dado(/^preencher o titulo da publicação$/) do
  puts '[SYSTEM] - PESQUISA COM FILTRO DE TITULO: ' + @tituloPublicacao
  @PagPesquisaPublicacao.Filtros.filtro_titulo.click
  @PagPesquisaPublicacao.Filtros.filtro_titulo.set @tituloPublicacao
  @paginas.wait_until_modal_load_invisible
  @PagPesquisaPublicacao.filtro_titulo_autocomplete.click
end

Então(/^são listadas as publicações com este titulo$/) do
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  expect(@PagPesquisaPublicacao.Resultado).to have_content @tituloPublicacao
  sleep 10
end

Dado(/^escolher a periodicidade semanal$/) do
  puts '[SYSTEM] - PESQUISA COM FILTRO DE PERIODICIDADE: ' + @periodicidadePublicacao[4]
  @PagPesquisaPublicacao.Filtros.filtro_periodicidade.select @periodicidadePublicacao[4]
end

Então(/^são listadas as publicações com esta periodicidade$/) do
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  expect(@PagPesquisaPublicacao.Resultado).to have_content @periodicidadePublicacao[4]
  sleep 10
end

Dado(/^preencher a data de inicio da publicação$/) do
  @PagPesquisaPublicacao.Filtros.filtro_data_inicio.click
  @PagPesquisaPublicacao.Filtros.filtro_data_inicio.set @dataInicioPublicacao
end

Então(/^são listadas as publicações com essa data de inicio$/) do
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  expect(@PagPesquisaPublicacao.Resultado).to have_content @dataInicioPublicacao
  sleep 10
end

Dado(/^preencher a data fim da publicação$/) do
  @PagPesquisaPublicacao.Filtros.filtro_data_fim.click
  @PagPesquisaPublicacao.Filtros.filtro_data_fim.set @dataFimPublicacao
  @PagPesquisaPublicacao.Filtros.filtro_data_fim.native.send_keys(:tab)
end

Então(/^são listadas as publicações com essa data fim$/) do
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  expect(@PagPesquisaPublicacao.Resultado).to have_content @dataFimPublicacao
  sleep 10
end


Então(/^são listadas as publicações que estão dentro deste periodo$/) do
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  expect(@PagPesquisaPublicacao.Resultado).to have_content @dataInicioPublicacao
  expect(@PagPesquisaPublicacao.Resultado).to have_content @dataFimPublicacao
  sleep 10
end

Dado(/^escolher o tipo de publicação$/) do
  @PagPesquisaPublicacao.Filtros.filtro_tipo_publicacao.select @tipoPublicacao[0]
end

Então(/^são listadas as publicações deste tipo apenas$/) do
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  expect(@PagPesquisaPublicacao.Resultado).to have_content 'Foram encontrados ' + @qtdPublicacoes[0] + ' registros'
  sleep 10
end

Dado(/^escolher o ativo todos$/) do
  @PagPesquisaPublicacao.Filtros.filtro_ativo.select @ativoPublicacao[0]
end

Então(/^são listadas as publicações ativas e inativas$/) do
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  expect(@PagPesquisaPublicacao.Resultado).to have_content 'Foram encontrados ' + @qtdPublicacoes[0] + ' registros'
  sleep 10
end

Dado(/^acessar a pesquisa de disponibilidade$/) do
  @PagPesquisaPublicacao.TipoConsulta.tipo_disponibilidade.click
  @paginas.wait_until_modal_load_invisible
end

Dado(/^escolher o fornecedor$/) do
  @PagPesquisaPublicacao.Filtros.filtro_forncederos_disponibilidade.select @fornecedorDisponibilidade
end

Dado(/^preencher a data de inicio da disponibilidade$/) do
  @PagPesquisaPublicacao.Filtros.filtro_data_ini_disponibilidade.click
  @PagPesquisaPublicacao.Filtros.filtro_data_ini_disponibilidade.set @dataIniDisponibilidade
  @PagPesquisaPublicacao.Filtros.filtro_data_ini_disponibilidade.native.send_keys(:tab)
end

Dado(/^preencher a data final da disponibilidade$/) do
  @PagPesquisaPublicacao.Filtros.filtro_data_fim_disponibilidade.click
  @PagPesquisaPublicacao.Filtros.filtro_data_fim_disponibilidade.set @dataFimDisponibilidade
  @PagPesquisaPublicacao.Filtros.filtro_data_fim_disponibilidade.native.send_keys(:tab)
end

Dado(/^pesquisa a disponibilidade$/) do
  @PagPesquisaPublicacao.Botoes.botao_pesquisar_disponibilidade.click
  @paginas.wait_until_modal_load_invisible
end

Então(/^é mostrado a calendario de disponibilidade das publicações$/) do
  expect(@PagPesquisaPublicacao.Resultado).not_to have_content @pesquisaPublicacaoVazia
  sleep 10
end

=begin
Dado(/^$/) do

end

Então(/^$/) do

end
=end
