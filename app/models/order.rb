class Order < ApplicationRecord
  belongs_to :cart
  has_one :bill
  has_many :order_item
  has_many :shoes, through: :order_items
  validates :address, presence: true
end
