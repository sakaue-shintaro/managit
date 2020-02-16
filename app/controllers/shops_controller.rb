class ShopsController < ApplicationController
  # before_action  :set_shops

  def index
  end

  def new
    @shop = Shop.new
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
end