class CabinsController < ApplicationController

  def index
    @cabins = Cabin.all
  end

  def new
    @cabin = Cabin.new
  end

  def create
    @cabin = Cabin.new(strong_params)
    @cabin.valid?
    raise
    @cabin.save
    redirect_to list_of_cabins_path
  end

  def edit
    @cabin = Cabin.find(params[:id])
  end

  def update
    @cabin = Cabin.find(params[:id])
    @cabin.update(strong_params)

    redirect_to cabins_path
  end

  private

  def strong_params
    params.require(:cabin).permit(:name, :description, :price_per_night, :number_of_guests, :location, :user)
  end

end
