class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.string :image_url
      t.text :sites

      t.timestamps
    end
  end
end
