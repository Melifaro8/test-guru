class Test < ApplicationRecord

  default_scope { order(title: :asc) }

  belongs_to :category
  belongs_to :author, class_name: 'User'

  has_many :questions, dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :users, through: :results

  validates :level, numericality: { greater_than: 0, only_integer: true }
  validates :title, uniqueness: { scope: :level }

  scope :by_category, -> (name) { joins(:category).where(categories: { title: name }) }
  scope :easy, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
  scope :level, -> (level) { where(level: level) }
  
  def self.sort_test_by_category(category_title)
    by_category(category_title).pluck(:title)
  end
end
