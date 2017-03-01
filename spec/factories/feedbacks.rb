FactoryGirl.define do
  factory :feedback do
    name Faker::Lorem.sentence(3, true)
  end
end
