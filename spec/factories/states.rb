FactoryBot.define do
  factory :state do
    name { "MyString" }
    abbreviation { "MyString" }
    services { false }
    min_age { 1 }
  end
end
