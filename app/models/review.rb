class Review < ApplicationRecord
  belongs_to :cocktail
  validates: :rating, prensence: true
  validates: :content
end
