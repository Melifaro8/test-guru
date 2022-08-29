class Result < ApplicationRecord
  belongs_to :user
  belongs_to :test, dependent: :destroy
end
