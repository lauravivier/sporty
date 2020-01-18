class EquipmentsController < ApplicationController
  def show
    @equipment = Equipment.find(params[:id])
  end

  def index
    @equipments = Equipment.all
  end
end
