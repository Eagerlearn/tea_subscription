FactoryBot.define do
  factory :tea do
    title { Faker::Tea.variety }
    description { Faker::Tea.variety }
    temperature { Faker::Number.within(range: 120..210) }
    brew_time { Faker::Number.within(range: 1..15) }
  end
end
