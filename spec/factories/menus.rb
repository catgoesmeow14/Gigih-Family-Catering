FactoryBot.define do
  factory :menu do
    name { "Mie Ayam Bakso" }
    description { "Indonesian chicken noodles with meatballs." }
    price { 15000.0 }
  end

  factory :invalid_food, parent: :food do
    name { nil }
    description { nil }
    price { 0.0 }
  end
end
