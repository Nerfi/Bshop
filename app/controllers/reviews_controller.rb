class ReviewsController < ApplicationController

  def create
    @shop = Shop.find(params[:shop_id])
    @review = Review.new(review_params)
    @review.shop = @shop
    #ojo con la linea 8
    authorize @review.shop

    if @review.save
    redirect_to shop_path(@shop)
  else
    render 'shops/show'
  end



  end

  private

  def review_params
    params.require(:review).permit(:content)

  end
end
