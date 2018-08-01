class Category < ApplicationRecord
  has_many :shoes
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  enum status: [:active, :unactive]
end
