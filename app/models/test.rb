class Test < ApplicationRecord
  def self.sort_test_by_category(category_title)
    joins('JOIN categories ON tests.category_id = categories.id')
    .where(categories: {title: category_title})
    .order(title: :desc)
    .pluck(:title)
  end
end
