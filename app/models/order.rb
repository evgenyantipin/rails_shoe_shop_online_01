class Order < ApplicationRecord
  belongs_to :cart
  has_one :bill
  has_many :order_item
end
