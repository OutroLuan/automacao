Dado(/^acessar a pagina de solicitação de troca de responsabilidade$/) do
  @home = Home.new
  @home.wait_for_barra_menu
  expect(@home).to have_barra_topo
  expect(@home).to have_barra_menu

  @paginas.menu_principal.click
  click_link 'Distribuição'
  click_link 'Solicitação de troca de responsabilidade'
  @paginas.wait_until_modal_load_invisible
end

Dado(/^que eu escolha a empresa de trabalho redeflex$/) do
  @PagSolicitacaoTroca.empresa_destino.select @empresa_destino[1]
  @PagSolicitacaoTroca.empresa_destino.native.send_keys(:tab)
  @paginas.wait_until_modal_load_invisible
  sleep 2
  expect(page).to have_content "Informe os parâmetros da busca"
  sleep 1
end

Dado(/^que eu escolha a empresa de origem log Express$/) do
  @PagSolicitacaoTroca.empresa_origem.select @empresa_origem[0]
  @paginas.wait_until_modal_load_invisible
end

Dado(/^preencha um estabelecimento compartilhado entre as duas empresas$/) do
  @PagSolicitacaoTroca.estabelecimento.click
  @PagSolicitacaoTroca.estabelecimento.set @estab_log
  expect(page).to have_content @estab_log + " - arroz"
  @PagSolicitacaoTroca.estabelecimento.native.send_keys(:enter)
  @paginas.wait_until_modal_load_invisible
  sleep 2
end

Dado(/^pesquise este estabelecimento compartilhado$/) do
  #não sei porque, mas preciso clicar duas vezes pra aparecer o resultado
  click_button "Pesquisar"
  sleep 1
  click_button "Pesquisar"
  @paginas.wait_until_modal_load_invisible
end

Dado(/^selecione este estabelecimento compartilhado$/) do
  @PagSolicitacaoTroca.Selecionar_estabelecimento.checkbox.click
  sleep 1
end

Quando(/^eu clicar em gravar solicitação de compartilhamento$/) do
  expect(page).to have_content "Gravar"
  @PagSolicitacaoTroca.botao_gravar.click
end

Quando(/^confirmar a solicitação de compartilhamento$/) do
  click_button "Sim"
  @PagSolicitacaoTroca.botao_gravar.click
end

Então(/^a solicitação é feita com sucesso$/) do
  sleep 20
  expect(page).to have_content @solicitacaoTrocaEfetivada
end
