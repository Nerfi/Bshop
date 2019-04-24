class Review < ApplicationRecord
  belongs_to :shop
  validates :content, length: { minimum: 12 }
end
