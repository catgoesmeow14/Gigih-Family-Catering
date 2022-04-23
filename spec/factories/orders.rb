FactoryBot.define do
  factory :order do
    total_price { 15000.0 }
    order_date { "2022-04-22" }
    status { "NEW" }
    customer_id { 1 }
  end

  factory :invalid_food, parent: :food do
    total_price { nil }
    order_date { "2022-04-22" }
    status { "delete" }
    customer_id { nil } 
end
end
