require 'rails_helper'

RSpec.describe Api::V1::ConsolesController, type: :controller do

  before{@console = Console.create(name: 'snes', manufacturer: 'nintendo')}

  describe 'GET /api/v1/consoles' do
    it 'Consegue listar todos os consoles e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/consoles/id' do
    it 'Consegue listar um console especifico e retornar status 200?' do
      get :show, params: {id: @console.id}
      expect(response.body).to include_json(name: 'snes')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/consoles' do
    it 'Consegue criar um console e retornar status 201?' do
      post :create, params: {console: {name: 'mega-drive', manufacturer: 'sega'}, format: :json}
      expect(response.body).to include_json(name: 'mega-drive')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/consoles/id' do
    it 'Consegue atualizar um console retornar status 200?' do
      console = Console.last
      patch :update, params: {console: {name: 'dreamcast', manufacturer: 'sega'}, id: console.id}
      expect(response.body).to include_json(name: 'dreamcast')
      expect(response).to have_http_status(200)
    end
  end

  describe 'DELETE /api/v1/consoles/id' do
    it 'Consegue excluir um console e retornar status 204?' do
      console = Console.last
      delete :destroy, params: {id: console.id}
      expect(Console.all).not_to include(console)
    end
  end

end