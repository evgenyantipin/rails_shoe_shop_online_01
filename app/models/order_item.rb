class OrderItem < ApplicationRecord
  belongs_to :order
  has_one :shoe

  validates :quantity, presence: true,
    numericality: {only_integer: true, greater_than: Settings.greater_than}
end
