class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :shoe

  def total_price
    price_shoes =
      if shoe.discount
        shoe.price * quantity - shoe.discount.percent * 0.01 * shoe.price
      else
        shoe.price * quantity
      end
  end
end
