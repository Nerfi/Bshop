class OrdersController < ApplicationController

  def create
    shop = Shop.find(params[:shop_id])
    order = Order.create!(shop_sku: shop.sku, amount: shop.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
    authorize order

  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
    authorize @order
  end

end
