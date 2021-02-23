class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
  def delete
    @booking = Booking.find(params:[id])
    @booking.destroy

    redirect_to booking_path
  end
end
