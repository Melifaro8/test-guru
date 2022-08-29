class User < ApplicationRecord
  has_many :tests, through: :results
  has_many :my_tests, class_name: 'Test', foreign_key: :author_id
  has_many :results, dependent: :destroy

  def test_history(level)
    tests.level(level)
  end
end
