class BookingsController < ApplicationController
  before_action :set_offer, only: %i[new create total_price]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.offer_id = @offer.id
    @booking.total_price= total_price
    if @booking.save
      redirect_to offer_booking_path(@offer, @booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to offer_path(@booking.offer), status: :see_other
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def total_price
    @offer.rate * (@booking.end_date - @booking.start_date).to_i
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end
end
