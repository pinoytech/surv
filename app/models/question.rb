class Question < ApplicationRecord
  belongs_to :feedback
  has_many :answers, inverse_of: :question
end
