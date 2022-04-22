class ReportSerializer
  include FastJsonapi::ObjectSerializer
  attributes :order_date, :customer_email, :subtotal, :ordered_menu
end
