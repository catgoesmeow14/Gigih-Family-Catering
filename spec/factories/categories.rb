FactoryBot.define do
  factory :category do
      name { "Appetizer" }
  end

  factory :invalid_category, parent: :category do
      name { nil }
  end
end