RSpec.describe 'testes de verificação de existencia de pastas' do

  it 'a pasta spec/models existe?' do
    expect(Dir.exist?('spec/models')).to eq(true)
  end

end