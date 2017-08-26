Before '@carrega_dados' do
  @senhaWeb = '1e48c4420b7073bc11916c6c1de226bb'
  @dataAtual = Time.now
  @dataUltAcesso = DateTime.new(2017,1,1)
  @dataExpiracao = DateTime.new(2017,12,1)
end

Before '@login_nulo' do
  @usuario = ''
  @senha = ''
end

Before '@login_invalido' do
  @usuario = 'usuario.user'
  @senha = 'user'
end

Before '@login_bloqueado' do
  @usuario = 'usuario.login'
  @senha = '1010'
end

Before '@login_incorreto' do
  @usuario = 'automacao.sgv'
  @senha = 'asdf'
end

Before '@login_sucesso' do
  @usuario = 'automacao.sgv'
  @senha = 'jhow'
end

Before '@login_logado' do
  @usuario = 'automacao.sgv'
  @senha = 'jhow'
end

Before '@login_inativo' do
  @usuario = 'usuario.login'
  @senha = '1010'
end

Before '@periodo_inatividade' do
  @usuario = 'usuario.login'
  @senha = '1010'
end
