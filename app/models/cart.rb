class Cart < ApplicationRecord
  has_many :cart_items
  belongs_to :user
  has_many :orders
  has_many :shoes, through: :cart_items

  def total_price
    cart_items.sum(&:total_price)
  end

  def item_size
    cart_items.count
  end

  def get_shoe item
    Shoe.find_by id: item.shoe_id
  end
end
