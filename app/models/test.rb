class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'

  has_many :questions, dependent: :destroy
  has_many :results
  has_many :users, through: :results

  scope :by_category, -> (name) { joins(:category).where(categories: { title: name }) }
  
  def self.sort_test_by_category(category_title)
    by_category(category_title).pluck(:title)
  end
end
