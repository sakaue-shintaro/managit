class CustomersController < ApplicationController
  before_action :set_customer, except: [:new,:create,:show,:nanba,:kumatori,:kaizuka,:hannan,:sakai,:umeda,:izumihuchu,:nishikujyo,:tennouji,:ootori]

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save!
    redirect_to root_path
  end

  def show
    @customer = Customer.all
  end

  def nanba
    @customer = Customer.where(shop_id:1)
    @shop = Shop.where(id:1)
  end

  def kumatori
    @customer = Customer.where(shop_id:2)
    @shop = Shop.where(id:2)
  end

  def kaizuka
    @customer = Customer.where(shop_id:3)
    @shop = Shop.where(id:3)
  end

  def hannan
    @customer = Customer.where(shop_id:4)
    @shop = Shop.where(id:4)
  end

  def sakai
    @customer = Customer.where(shop_id:5)
    @shop = Shop.where(id:5)
  end

  def umeda
    @customer = Customer.where(shop_id:6)
    @shop = Shop.where(id:6)
  end

  def izumihuchu
    @customer = Customer.where(shop_id:7)
    @shop = Shop.where(id:7)
  end

  def nishikujyo
    @customer = Customer.where(shop_id:8)
    @shop = Shop.where(id:8)
  end

  def tennouji
    @customer = Customer.where(shop_id:9)
    @shop = Shop.where(id:9)
  end

  def ootori
    @customer = Customer.where(shop_id:10)
    @shop = Shop.where(id:10)
  end
  private
  def customer_params
    params.require(:customer).permit(:date,:shop_id,:days,:ten_oclock,:eleven_oclock,:twelve_oclock,:thir_teen_oclock,:four_teen_oclock,:fif_teen_oclock,:seven_teen_oclock,:eigh_teen_oclock,:nine_teen_oclock,:twenty_oclock,:twenty_one_oclock,:twenty_two_oclock)
  end

  def set_customer
    @sale = Shop.find(params[:id])
  end
end
