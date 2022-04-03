FactoryBot.define do
  factory :group do
    name { Faker::Fantasy::Tolkien.location }
    image_data { TestData.image_data }
    author_id { Faker::Number.within(range: 1..10)}
  end
end
