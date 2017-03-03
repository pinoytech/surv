class Question < ApplicationRecord
  belongs_to :feedback
  has_many :answers, inverse_of: :question, dependent: :destroy

  alias_attribute :added_by_administrator, :custom
end
