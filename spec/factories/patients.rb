FactoryBot.define do
  factory :patient do
    full_name { "MyString" }
    email { "MyString" }
    DOB { "2021-03-17" }
    state { "MyString" }
    product { nil }
  end
end
