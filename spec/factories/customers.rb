FactoryBot.define do
  factory :customer do
    name { "Vidya Chan" }
    email { "pidydaw@gmail.com" }
  end

  factory :invalid_customer, parent: :customer do
    email { nil }
  end
end
