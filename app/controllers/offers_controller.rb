class OffersController < ApplicationController
  # before_action :set_user, only: [:new, :create]
  before_action :authenticate_user!, only: [:new]
  def index
    if params[:query].present?
      @offers = Offer.where('brand ILIKE ?', "%#{params[:query]}%")
    else
      @offers = Offer.all
    end
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude
      }
    end
  end

  def my_offers
    if current_user
      @my_offers = current_user.owned_offers
    else
      flash[:alert] = 'You need to sign in'
      redirect_to new_user_session_path
    end
  end

  def mylist
    current_user.owned.offers
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(params_offer)
    @offer.user_id = current_user.id
    @offer.availability = 1
    if @offer.save
      redirect_to offer_path(@offer)
    else
    render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to my_offers_path, status: :see_other
  end


  private

  def params_offer
    params.require(:offer).permit(:brand, :model, :disc_space, :video_card, :ram, :screen_size, :usage, :rate, :photo, :address)
  end
end
