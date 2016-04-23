class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :cover_art
      t.integer :release_year
      t.string :type
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
