class ShopsController < ApplicationController
  # before_action  :shop_params
  # before_action  :set_shop

  def index
  end

  def edit
    @shop = Shop.all
  end

  def create
    Shop.create(shop_params)
    redirect_to root_path
  end

  def show
  end



  private
  def shop_params
    params.require(:shop).permit(:name,:password,:address,:phonenumber,:manager)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end
end