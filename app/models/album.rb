class Album < ApplicationRecord
  belongs_to :artist
  has_many :album_genres
  has_many :genres, through: :album_genres

  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :year, presence: true, length: { minimum: 4, maximum: 4 }
  validates :image_url, length: { maximum: 255 }
  validates :artist_id, presence: true
end
