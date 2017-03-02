class Response < ApplicationRecord
  belongs_to :feedback
  has_many :answers

  accepts_nested_attributes_for :answers
end
