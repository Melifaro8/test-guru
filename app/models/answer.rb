class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :answers_validation, on: :create

  scope :correct, -> { where(correct: true) }

  def answers_validation
    errors.add(:question, 'слишком много вариантов ответа') unless question.answers.count < 4
  end
end
