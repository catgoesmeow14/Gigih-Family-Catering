class CustomerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email

  has_many :orders
end
