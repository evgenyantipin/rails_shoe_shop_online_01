class Shoe < ApplicationRecord
  has_one :discount
  belongs_to :category

  default_scope { where(active: true) }
  scope :related, ->(category){where category: category}
end
