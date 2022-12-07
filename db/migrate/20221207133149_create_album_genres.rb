class CreateAlbumGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :album_genres do |t|
      t.belongs_to :album
      t.belongs_to :genre
      t.timestamps
    end
  end
end
