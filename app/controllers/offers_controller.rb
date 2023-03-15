class OffersController < ApplicationController
  # before_action :set_user, only: [:new, :create]
  def index
    @offers = Offer.all
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
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def destroy
    @offer.destroy
  end

  private

  def params_offer
    params.require(:offer).permit(:brand, :model, :disc_space, :video_card, :ram, :screen_size, :usage, :rate, :availability, :photo)
  end
end
