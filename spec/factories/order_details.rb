FactoryBot.define do
  factory :order_detail do
    qty { 1 }
    order { nil }
    menu { nil }
  end
end
