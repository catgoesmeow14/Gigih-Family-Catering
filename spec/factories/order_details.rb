FactoryBot.define do
  factory :order_detail do
    qty { 1 }
    order { nil }
    menu { nil }
    subtotal { 1 }
  end
end
