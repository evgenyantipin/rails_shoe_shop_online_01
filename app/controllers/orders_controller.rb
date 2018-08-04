class OrdersController < ApplicationController
  def index
    @order = Order.new
    args = params[:cart_item_ids]
    @items =
      if args
        CartItem.where id: args
      else
        current_user.cart.cart_items
      end
  end

  def create
    @cart = current_user.cart
    return if @cart.item_size.zero?
    payment_type = params[:order][:payment_type] == t("in_person") ? 0 : 1
    @order = Order.new address: params[:order][:address], status: false,
      payment_type: payment_type, cart_id: @cart.id,
      phone: params[:order][:phone]
    args = params[:cart_item_ids]
    @items = CartItem.where id: params[:cart_item_ids]
    if @order.save
      @items.each do |item|
        OrderItem.create quantity: item.quantity, shoe: item.shoe,
          order: @order
      end
      @items.destroy_all
      flash[:info] = t "order_success"
      redirect_to root_url
    else
      render "orders/index"
    end
  end
end
