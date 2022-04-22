FactoryBot.define do
  factory :order do
    total_price { 1.5 }
    order_date { "2022-04-22" }
    status { "MyString" }
    customer { nil }
  end
end
