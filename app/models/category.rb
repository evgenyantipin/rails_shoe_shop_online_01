class Category < ApplicationRecord
  has_many :shoes
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  enum status: [:active, :unactive]

  scope :inactive, ->{where status: 0}
  scope :sort_category, ->{order created_at: :desc}
end
