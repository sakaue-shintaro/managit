class SalesController < ApplicationController
  before_action :set_sale, except: [:new,:create,:show]


  def new
    @sale = Sale.new

  end

  def create
    @sale = Sale.new(sale_params)
    @sale.save!
    redirect_to root_path
  end

  def show
    @sale = Sale.all
  end
private
  def sale_params
    params.require(:sale).permit(:date,:shop_id,:days,:ten_oclock,:eleven_oclock,:twelve_oclock,:thir_teen_oclock,:four_teen_oclock,:fif_teen_oclock,:seven_teen_oclock,:eigh_teen_oclock,:nine_teen_oclock,:twenty_oclock,:twenty_one_oclock,:twenty_two_oclock)
  end

  def set_sale
    @sale = Shop.find(params[:id])
  end
end
