RSpec.describe 'testes de verificação de existencia de pastas' do

  it 'a pasta spec/models existe?' do
    expect(Dir.exist?('spec/models')).to eq(true)
  end

  it 'a pasta spec/controllers existe?' do
    expect(Dir.exist?('spec/controllers')).to eq(true)
  end

  it 'a pasta app/controllers/api existe?' do
    expect(Dir.exist?('app/controllers/api')).to eq(true)
  end

  it 'a pasta app/controllers/api/v1 existe?' do
    expect(Dir.exist?('app/controllers/api/v1')).to eq(true)
  end

end