class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    cabin = Cabin.find(params[:cabin_id])
    @booking.cabin = cabin

    if @booking.valid?
      @booking.save
      redirect_to profile_path
    else
      render 'cabins/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to profile_path
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to profile_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
