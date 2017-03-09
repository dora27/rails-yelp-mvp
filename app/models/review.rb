class Review < ApplicationRecord
  belongs_to :restaurant

  RATINGS = [0, 1, 2, 3, 4, 5]

  # Validations
  #numericality verifies if the rating is indeed "integer"
  validates :rating, inclusion: { in: RATINGS }, numericality: true
  validates :content, presence: true
end


