# classe herda de ApplicationController
class Api::V1::ConsolesController < ApplicationController

  # função usada antes das actions show, update e destroy
  before_action :set_console, only: %i[show update destroy]

  # retorna todos os consoles cadastrados em formato json
  def index
    @consoles = Console.all 
    render json: @consoles
  end

  # retorna um console específico identificado pelo id na requisição
  def show
    render json: @console
  end

  # cria um console no banco
  def create
    @console = Console.new(console_params)
    if @console.save
      render json: @console, status: :created, location: api_v1_console_url(@console)
    else
      render json: @console.errors, status: :unprocessable_entity
    end
  end

  # atualiza um console no banco
  def update
    if @console.update(console_params)
      render json: @console
    else
      render json: @console.errors, status: :unprocessable_entity
    end
  end


# funções privadas
private

# busca no banco um console com id enviado na requisição
def set_console
  @console = Console.find(params[:id])
end

# permite que os campos name e manufacturer sejam manipulados nas requisições
def console_params
  params.require(:console).permit(:name, :manufacturer)
end

end