class MenuSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :price

  has_many :category_details
  has_many :categories, through: :category_details

  has_many :order_details
  has_many :orders, through: :order_details
end
