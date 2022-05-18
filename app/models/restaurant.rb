class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: {in: categories}, presence: true
  has_many :reviews, dependent: :destroy
end
