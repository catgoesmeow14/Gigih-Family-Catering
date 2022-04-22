class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

  has_many :order_details
  has_many :menus, through: :order_details
end
