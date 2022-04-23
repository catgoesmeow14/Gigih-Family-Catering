FactoryBot.define do
  factory :order do
    total_price { 15000.0 }
    order_date { "2022-04-22" }
    status { "NEW" }
    customer_id { 1 }
  end
end
