require 'rails_helper'

RSpec.describe Console, type: :model do

  before{@console = Console.new} # objeto console para uso nos testes

  describe 'Testes de verificação de existencia de pastas' do

    it 'name consegue ser preenchido?' do
      @console.name = 'ps5'
      expect(@console.name).to eq('ps5') # espera que name seja igual a ps5
    end

    it 'manufacturer consegue ser preenchido?' do
      @console.manufacturer = 'sony'
      expect(@console.manufacturer).to eq('sony') # espera que manufacturer seja igual a sony
    end

  end

end