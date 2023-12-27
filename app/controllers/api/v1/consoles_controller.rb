# classe herda de ApplicationController
class Api::V1::ConsolesController < ApplicationController

  # função usada antes das actions show, update e destroy
  before_action :set_console, only: %i[show update destroy]

  # retorna todos os consoles cadastrados em formato json
  def index
    @consoles = Console.all 
    render json: @consoles
  end

  # retorna um registro específico identificado pelo id na requisição
  def show
    render json: @console
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