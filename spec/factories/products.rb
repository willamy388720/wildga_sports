FactoryBot.define do
  factory :product do
    description { "MyString" }
    price { "9.99" }
    image_url { "MyString" }
    promotion { false }
    pecent_promotion { "9.99" }
  end
end
