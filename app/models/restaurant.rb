class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: {in: CATEGORIES}, presence: true
  has_many :reviews, dependent: :destroy
end
