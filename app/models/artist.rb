class Artist < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :image_url, length: { maximum: 255 }
end
