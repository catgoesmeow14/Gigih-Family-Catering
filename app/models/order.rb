class Order < ApplicationRecord
  scope :filter_by_status, -> (status) { where status: status }
  scope :filter_by_customer_id, -> (customer_id) { where customer_id: customer_id}
  scope :filter_by_order_date, -> (order_date) { where order_date: order_date}
  scope :filter_by_total_min, -> (total_min) { where("total >= ?", total_min) }
  scope :filter_by_total_max, -> (total_max) { where("total <= ?", total_max) }
  scope :filter_by_order_date_min, -> (order_date_min) { where("order_date > ?", order_date_min)}
  scope :filter_by_order_date_max, -> (order_date_max) { where("order_date < ?", order_date_max)}

  validates :customer_id, presence: true
  validates :total, presence: true
  validates :status, presence: true, inclusion: { in: %w(NEW PAID CANCELED), message: "is not a valid status" }
  validates :order_date, presence: true
  
  belongs_to :customer

  has_many :order_details
  has_many :menus, through: :order_details
end
