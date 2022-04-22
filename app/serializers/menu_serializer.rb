class MenuSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :price
end
