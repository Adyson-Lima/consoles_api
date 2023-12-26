require 'rails_helper'

RSpec.describe Console, type: :model do

  before{@console = Console.new} # objeto console para uso nos testes

  describe 'Testes de verificação de existencia de pastas' do

    it 'name consegue ser preenchido?' do
      @console.name = ''
      expect(@console.name).to eq('ps5') # espera que name seja igual a ps5
    end

  end



end