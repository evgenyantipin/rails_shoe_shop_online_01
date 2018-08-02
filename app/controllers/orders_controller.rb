class OrdersController < ApplicationController
  def index
    @user = current_user
    args = params[:event_ids]
    @items =
      if args
        CartItem.where("id IN (?)", args.map(&:to_i)).to_a
      else
        current_user.cart.cart_items
      end
  end

  def create
    @cart = current_user.cart
    payment_type = params[:user][:payment_type] == t("in_person") ? 0 : 1
    order = Order.create address: params[:user][:address], status: false,
      payment_type: payment_type, cart_id: @cart.id
    args = params[:cart_item_ids]
    @items = CartItem.where("id IN (?)", args.map(&:to_i)).to_a
    @items.each do |item|
      OrderItem.create quantity: item.quantity, shoe_id: item.shoe_id,
        order_id: order.id
    end
    @items.each &:destroy
    flash[:info] = t "order_success"
    redirect_to root_url
  end
end
