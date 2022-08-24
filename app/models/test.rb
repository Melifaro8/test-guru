class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, :class_name => 'User'

  has_many :questions
  has_many :results
  
  has_and_belongs_to_many :users

  scope :by_category, -> (name) { joins(:category).where(categories: { title: name }) }
  
  def self.sort_test_by_category(category_title)
    by_category(category_title).pluck(:title)
   
    # joins('JOIN categories ON tests.category_id = categories.id')
    # .where(categories: {title: category_title})
    # .order(title: :desc)
    # .pluck(:title)
  end
end
