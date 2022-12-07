class Song < ApplicationRecord
  belongs_to :album

  validates :name, presence: true, length: { minimum: 1, maximum: 50 }
end
