FactoryBot.define do
  factory :order_detail do
    qty { 1 }
    order_id { 1 }
    menu_id { 1 }
    subtotal { 15000.0 }
  end
end
