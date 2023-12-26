require 'rails_helper'

RSpec.describe Api::V1::ConsolesController, type: :controller do

  before{@console = Console.create(name: 'snes', manufacturer: 'nintendo')}

  describe 'GET /api/v1/consoles' do
    it 'Consegue listar todos os consoles e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

end