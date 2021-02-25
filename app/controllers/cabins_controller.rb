class CabinsController < ApplicationController
  def index
    @cabins = Cabin.all
  end

  def show
    @booking = Booking.new
    @cabin = Cabin.find(params[:id])
  end

  def new
    @cabin = Cabin.new
  end

  def create
    @cabin = Cabin.new(strong_params)
    @cabin.user = current_user
    if @cabin.save
      redirect_to profile_path
    else
      render 'new'
    end
  end

  def edit
    @cabin = Cabin.find(params[:id])
  end

  def update
    @cabin = Cabin.find(params[:id])
    @cabin.update(strong_params)

    redirect_to profile_path
  end

  def destroy
    @cabin = Cabin.find(params[:id])
    @cabin.destroy

    redirect_to profile_path
  end

  private

  def strong_params
    params.require(:cabin).permit(:name, :description, :price_per_night, :number_of_guests, :location, :user, :photo)
  end
end
