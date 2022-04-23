class OrderDetail < ApplicationRecord
  validates :qty, presence: true, numericality: true
  validates :order_id, presence: true
  validates :menu_id, presence: true
  validates :subtotal, presence: true, numericality: true


  belongs_to :order
  belongs_to :menu
end
