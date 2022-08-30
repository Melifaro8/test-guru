class User < ApplicationRecord
  has_many :results, dependent: :destroy
  has_many :tests, through: :results, dependent: :destroy
  has_many :my_tests, class_name: 'Test', foreign_key: :author_id, dependent: :destroy

  def test_history(level)
    tests.level(level)
  end
end
