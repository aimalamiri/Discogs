class AlbumGenre < ApplicationRecord
  belongs_to :album
  belongs_to :genre
end
