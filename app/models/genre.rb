class Genre < ApplicationRecord
  has_many :albums

  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
end
