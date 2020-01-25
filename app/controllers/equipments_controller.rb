class EquipmentsController < ApplicationController
  def show
    @equipment = Equipment.find(params[:id])
  end

  def index
    if params[:query].present?
      @equipment = Equipment.where(sport: params[:query])
    else
      @equipment = Equipment.all
  end
end
