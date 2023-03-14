#what
class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    # @booking = Booking.find(params[:booking_id])
    # @booking = @booking.bookings.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @booking = @booking.bookings.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guests)
  end
end
