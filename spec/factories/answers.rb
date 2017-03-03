FactoryGirl.define do
  factory :answer do
    answer Faker::Lorem.sentence(3, true)
    response
    question
  end
end
