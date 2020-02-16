class SalesController < ApplicationController
  before_action :set_sale, except: [:new,:create,:show,:nanba,:kumatori,:kaizuka,:hannan,:sakai,:umeda,:izumihuchu,:nishikujyo,:tennouji,:ootori]


  def new
    @sale = Sale.new

  end

  def create
    @sale = Sale.new(sale_params)
    @sale.save!
    redirect_to root_path
  end
  def show
<<<<<<< Updated upstream
    @sales = Sale.all
=======
    @sales = Sale.a
    
>>>>>>> Stashed changes
  end

  def nanba
    @sales = Sale.where(shop_id:1)
    @shop = Shop.where(id:1)
  end

  def kumatori
    @sales = Sale.where(shop_id:2)
    @shop = Shop.where(id:2)
  end

  def kaizuka
    @sales = Sale.where(shop_id:3)
    @shop = Shop.where(id:3)
  end

  def hannan
    @sales = Sale.where(shop_id:4)
    @shop = Shop.where(id:4)
  end

  def sakai
    @sales = Sale.where(shop_id:5)
    @shop = Shop.where(id:5)
  end

  def umeda
    @sales = Sale.where(shop_id:6)
    @shop = Shop.where(id:6)
  end

  def izumihuchu
    @sales = Sale.where(shop_id:7)
    @shop = Shop.where(id:7)
  end

  def nishikujyo
    @sales = Sale.where(shop_id:8)
    @shop = Shop.where(id:8)
  end

  def tennouji
    @sales = Sale.where(shop_id:9)
    @shop = Shop.where(id:9)
  end

  def ootori
    @sales = Sale.where(shop_id:10)
    @shop = Shop.where(id:10)
  end


private
  def sale_params
    params.require(:sale).permit(:date,:shop_id,:days,:ten_oclock,:eleven_oclock,:twelve_oclock,:thir_teen_oclock,:four_teen_oclock,:fif_teen_oclock,:seven_teen_oclock,:eigh_teen_oclock,:nine_teen_oclock,:twenty_oclock,:twenty_one_oclock,:twenty_two_oclock)
  end

  def set_sale
    @sale = Shop.find(params[:id])
  end
end
