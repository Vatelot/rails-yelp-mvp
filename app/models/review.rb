class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: true
  validates :rating, inclusion: {in: (0..5)}
  belongs_to :restaurant
end
