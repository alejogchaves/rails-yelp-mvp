RATING = [0, 1, 2, 3, 4, 5]

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { in: RATING }, presence: true, numericality: true
  validates :content, presence: true
end
