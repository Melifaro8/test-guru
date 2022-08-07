class Test < ApplicationRecord
  def sort_test_by_category(category_title)
    Tset.joins(:test).where(categories: {title: category_title}).order(title: :desk).pluck(:title)
end
