class Shoe < ApplicationRecord
  has_one :discount
  belongs_to :category

  default_scope{where(active: true)}
  scope :related, ->(category){where category: category}
  scope :search, ->(term){where "name LIKE ?", "%#{term}%"}
  scope :sorted, ->{order created_at: :desc}
end
