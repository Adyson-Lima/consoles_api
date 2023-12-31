require 'rails_helper'

RSpec.describe Console, type: :model do

  before{@console = Console.new} # objeto console para uso nos testes

  describe 'Testes de preenchimento de campos de um objeto console' do

    it 'name consegue ser preenchido?' do
      @console.name = 'ps5'
      expect(@console.name).to eq('ps5') # espera que name seja igual a ps5
    end

    it 'manufacturer consegue ser preenchido?' do
      @console.manufacturer = 'sony'
      expect(@console.manufacturer).to eq('sony') # espera que manufacturer seja igual a sony
    end

  end

  describe 'Testes de validação de campos de um objeto console' do

    it 'objeto console valido com campos obrigatórios preenchidos?' do
      @console.name = 'xbox'
      @console.manufacturer = 'microsoft'
      expect(@console).to be_valid
    end

    it 'objeto console invalido com campos obrigatórios não preenchidos?' do
      console = Console.new # campos name e manufacturer não preenchidos
      expect(console).to be_invalid
    end

  end

end