class Feedback < ApplicationRecord

  has_many :questions, inverse_of: :feedback

  accepts_nested_attributes_for :questions

  DEFAULT_QUESTIONS = [
    'What is your favorite book?',
    'Who is your favorite band?',
    'What is your favorite food?'
  ]

end
