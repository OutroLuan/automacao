Dado(/^acessar a pagina de autorização de troca de responsabilidade$/) do
  @home = Home.new
  @home.wait_for_barra_menu
  expect(@home).to have_barra_topo
  expect(@home).to have_barra_menu

  @paginas.menu_principal.click
  click_link 'Administrativo'
  click_link 'Transferência de estabelecimento'
  click_link 'Autorização de transferência'
  @paginas.wait_until_modal_load_invisible
end

Dado(/^que eu escolha a empresa de origem log express para autorização$/) do
  @PagAutorizacaoTroca.empresa_origem.select @empresa[0]
  @paginas.wait_until_modal_load_invisible
end

Dado(/^que eu escolha a empresa de destino redeflex para autorização$/) do
  @PagAutorizacaoTroca.empresa_destino.select @empresa[1]
  @paginas.wait_until_modal_load_invisible
end

Dado(/^que eu pesquise por solicitações de troca$/) do
  click_button "Pesquisar"
  @paginas.wait_until_modal_load_invisible
  sleep 5
end

Dado(/^selecionar as solicitações$/) do
  @PagAutorizacaoTroca.Selecionar_estabelecimento.marcar_todos.click
  @paginas.wait_until_modal_load_invisible
end

Quando(/^eu clicar em autorizar$/) do
  expect(page).to have_content 'Autorizar'
  click_button 'Autorizar'
  @paginas.wait_until_modal_load_invisible
end

Quando(/^confirmar a autorização$/) do
  click_button 'Sim'
  @paginas.wait_until_modal_load_invisible
end

Então(/^a autorização é efetivada com sucesso$/) do
  sleep 20
  expect(page).to have_content @autorizacaoEfetivada
end
