FactoryGirl.define do
  factory :question do
    feedback
    question Faker::Lorem.sentence(3, true)
  end
end
