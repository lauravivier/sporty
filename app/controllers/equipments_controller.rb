class EquipmentsController < ApplicationController
  def show
    @equipment = Equipment.find(params[:id])
  end

  def index
    @equipment = Equipment.all
  end
end
