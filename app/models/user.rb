class User < ApplicationRecord

  def test_history(level)
    Test.joins('JOIN results ON results.test_id = tests.id')
    .where(level: level)
    .where(results: {user_id: id})
  end
end
