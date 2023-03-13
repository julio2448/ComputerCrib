class OffersController < ApplicationController
  # before_action :set_user, only: [:new, :create]
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(params_offer)
    if @offer.save
      redirect_to_offer_path(@offer)
    else
      render :new
    end
  end

  def destroy
    @offer.destroy
  end

  private

  def params_offer
    params.require(:offer).permit(:brand, :model, :disc_space, :video_card, :ram, :screen_size, :usage, :rate, :availability)
  end

  # def set_user
  #   @user = User.find(params[:id])
  # end
end