class ReviewsController < ApplicationController

  before_action :set_shop, only: [ :edit, :update, :destroy]


  def create
    @shop = Shop.find(params[:shop_id])
    @review = Review.new(review_params)
    @review.shop = @shop
    #ojo con la linea 9
    authorize @review.shop

    if @review.save
      respond_to do |format|
    format.html  {redirect_to shop_path(@shop)}
    format.js

  end

  else
  respond_to do  |format|
     format.html {render 'gyms/show'}
     format.js
  end

  end



  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)

  end

  def set_shop
  @shop = Shop.find(params[:id])
  authorize @shop



  end
end
