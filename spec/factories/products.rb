FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { "MyText" }
    price { 1.5 }
    external_link { "MyText" }
    brand { nil }
  end
end
