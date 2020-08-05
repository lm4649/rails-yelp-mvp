class Restaurant < ApplicationRecord
  CAT = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: CAT }
  has_many :reviews, dependent: :destroy
end
