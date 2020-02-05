class ShopsController < ApplicationController
  before_action  :set_shops

  def index
  end

  def new
    @sales = Sales.new
  end


private
  def set_shops
    @shops = Shops.find(params[:id])
  end
end