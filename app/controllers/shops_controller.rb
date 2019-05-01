class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

    @shops = policy_scope(Shop).order(created_at: :desc)
    @shops = Shop.where.not(latitude: nil, longitude: nil)

    @markers = @shops.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        # Uncomment the above line if you want each of your markers to display a info window when clicked
        # (you will also need to create the partial "/flats/map_box")
      }
    end

  end

  def show
    @shop = Shop.find(params[:id])
    authorize @shop
    @review = Review.new

  end

  def new
    @shop = Shop.new
    authorize @shop

  end

  def edit

    @shop = Shop.find(params[:id])
    authorize @shop

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
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    if @shop.update(shop_params)
      redirect_to @shop, notice: "Your shop was updated, thanks"
    else
      render :edit
    end
    authorize @shop

  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to shops_path
    #authorize @shop


  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
    authorize @shop

  end

  def shop_params
    params.require(:shop).permit(:name, :description, :price, :photo, :sku, :address)

  end


end
