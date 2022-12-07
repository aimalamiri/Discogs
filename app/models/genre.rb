class Genre < ApplicationRecord
  has_many :albums
  has_many :album_genres
  has_many :albums, through: :album_genres

  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
end
