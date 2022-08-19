class User < ApplicationRecord
  has_many :tests
  has_many :results
  has_and_belongs_to_many :tests

  def test_history(level)
    Test.joins('JOIN results ON results.test_id = tests.id')
    .where(level: level)
    .where(results: {user_id: id})
  end
end
