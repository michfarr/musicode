class RemoveTypeFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :type, :string
  end
end
