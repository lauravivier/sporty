class EquipmentsController < ApplicationController
  def show
    @equipment = Equipment.find(params[:id])
  endxz

  def index
    if params[:query].present?
      @equipments = Equipment.where(name: params[:query])
    else
      @equipments = Equipment.all
    end
  end
end
