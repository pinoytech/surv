class Feedback < ApplicationRecord

  has_many :questions, inverse_of: :feedback
  has_many :responses, inverse_of: :feedback

  accepts_nested_attributes_for :questions

  extend FriendlyId
  friendly_id :uuid, use: [:slugged]

  DEFAULT_QUESTIONS = [
    'What is your favorite book?',
    'Who is your favorite band?',
    'What is your favorite food?'
  ]

  def uuid
    slug || SecureRandom.uuid
  end
end
