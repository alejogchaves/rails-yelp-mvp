CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES }, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
end
