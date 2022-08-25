class User < ApplicationRecord
  has_many :tests, through: :results
  has_many :my_tests, class_name: 'Test', foreign_key: :author_id
  has_many :results, dependent: :destroy

  def test_history(level)
    Test.joins('JOIN results ON results.test_id = tests.id')
    .where(level: level)
    .where(results: {user_id: id})
  end
end
