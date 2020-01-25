class EquipmentsController < ApplicationController
  def show
    @equipment = Equipment.find(params[:id])
  end

  def index

    # if params[:query].present?
    #   @equipment = Equipment.where(sport: params[:query], kid_age: params[:query])
    # else
    #   @equipment = Equipment.all
    # end
    @equipments = Equipment.all

  end

end
