class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :total_price, :order_date, :status, :customer_id

  has_many :order_details
  has_many :menus, through :order_details  
end
