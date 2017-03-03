class Response < ApplicationRecord
  belongs_to :feedback
  has_many :answers, dependent: :destroy
  belongs_to :respondent

  validates :feedback_id, presence: true

  accepts_nested_attributes_for :answers
  accepts_nested_attributes_for :respondent
end
