class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :shoe
  validates :quantity, presence: true,
    numericality: {only_integer: true, greater_than: Settings.greater_than}

  def total_price
    price_shoes =
      if shoe.discount
        shoe.price * quantity - shoe.discount.percent * 0.01 * shoe.price
      else
        shoe.price * quantity
      end
  end
end
