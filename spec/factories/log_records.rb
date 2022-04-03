FactoryBot.define do
  factory :log_record do
    name { Faker::Restaurant.name }
    amount { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    author_id { Faker::Number.within(range: 1..10) }
  end
end
