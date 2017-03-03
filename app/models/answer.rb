class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :response
  validates :answer, presence: {message: 'can\'t be blank'}
end
