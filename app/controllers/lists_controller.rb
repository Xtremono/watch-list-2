class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
      if @list.save
        redirect_to list_path
      else
        render :new, status: :unprocessable_entity
      end
  end

private

def list_params #nombre del modelo #evitar ser hackeados!!! siempre es lo mismo, lo unico que cambia es lo que este dentro de los parentesis
  params.require(:list).permit(:name)#nombre del modelo(:list)nombre de las columnas que vamos a llenar con el input(:name)
end
end
