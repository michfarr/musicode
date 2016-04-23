class RemoveCoverArtFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :cover_art, :string
  end
end
