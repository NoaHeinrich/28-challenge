FactoryBot.define do
  factory :product do
    name { "MyString" }
    ndc { "MyString" }
    qty { 1 }
    price { 1 }
    instructions { "MyString" }
    text { "MyString" }
    category { nil }
  end
end
