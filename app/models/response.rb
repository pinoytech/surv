class Response < ApplicationRecord
  belongs_to :feedback
  has_many :answers
  belongs_to :respondent

  accepts_nested_attributes_for :answers
  accepts_nested_attributes_for :respondent
end
