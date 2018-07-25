class Shoe < ApplicationRecord
  has_one :discount
  belongs_to :category
  has_one :order_item

  scope :related, ->(category){where category: category}
end
