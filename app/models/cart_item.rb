class CartItem < ApplicationRecord
  belongs_to :cart
  has_one :shoe
end
