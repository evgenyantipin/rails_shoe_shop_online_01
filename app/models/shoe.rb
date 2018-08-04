class Shoe < ApplicationRecord
  has_one :discount
  belongs_to :category

  scope :related, ->(category){where category: category}
  scope :search, ->(term){where "name LIKE ?", "%#{term}%"}
  scope :sorted, ->{order created_at: :desc}

  def get_quantity
    count = quantity
    return true if count.positive?
    false
  end

  def get_price
    discount ? price -
      discount.percent * 0.01 * price : price
  end
end
