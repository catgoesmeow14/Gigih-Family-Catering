class OrderDetailSerializer
  include FastJsonapi::ObjectSerializer
  attributes :qty, :order_id, :menu_id, :subtotal
end
