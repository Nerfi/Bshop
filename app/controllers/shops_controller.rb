class ShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    #@shops =Shop.all
    @shops = policy_scope(Shop).order(created_At: :desc)

  end

  def show
    @shop = Shop.find(params[:id])
    authorize @shop

  end

  def new
    @shop = Shop.new
    authorize @shop

  end

  def edit

  end

  def create
    @shop = Shop.new(shop_params)
    @shop.save
    @shop.user = current_user
    authorize @shop
    if @shop.save
      redirect_to @shop , notice: 'your shop was created thanks!'
    else
      render :edit
    end

  end

  def update

  end

  def destroy
    @shop.destroy
    redirect_to shop_index_path

  end

  private

  def shop_params
    params.require(:shop).permit(:name, :description, :price)

  end


end
