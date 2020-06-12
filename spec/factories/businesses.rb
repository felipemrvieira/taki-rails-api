FactoryBot.define do
  factory :business do
    name { "MyString" }
    address { "MyText" }
    city { "MyString" }
    user { nil }
  end
end
