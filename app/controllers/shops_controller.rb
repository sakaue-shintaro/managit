class ShopsController < ApplicationController
  # before_action  :set_shops

  def index
  end

  def new
    @sale = Shop.new
  end

  def create
    Sale.create(shop_params)
    binding.pry
    redirect_to root_path
  end

  def show
  end



  private
  def shop_params
    params.require(:shop).permit(:id)
  end
end