FactoryGirl.define do
  factory :answer do
    answer Faker::Lorem.sentence(3, true)
  end
end
