class ShopsController < ApplicationController
  # before_action  :set_shops

  def index
  end

  def new
    @sales = Sale.new
    @customers = Customer.new
  end


# private
#   def set_shops
#     @shops = Shop.find(params[:id])
#   end
end