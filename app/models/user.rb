class User < ApplicationRecord

  def test_history(level)
    Test.joins('JOIN results ON results.test_id = test.id').where(:level => level).where(results: {user_id => user.id})
  end
    
    # написать метод который будет формировать SQL запрос и отправлять его на вывод (объединить таблицы)
end
