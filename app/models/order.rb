class Order < ApplicationRecord
  belongs_to :cart
  has_one :bill
  has_many :order_items
  has_many :shoes, through: :order_items
  validates :phone, presence: true
  validates :address, presence: true

  scope :sorted_order, ->{order created_at: :desc}

  def get_status
    status? ? I18n.t("delivered") : I18n.t("not_delivery")
  end

  def get_payment_type
    payment_type.zero? ? I18n.t("in_person") : I18n.t("card")
  end

  def total_price
    order_items.sum(&:total_price)
  end
end
