class Song < ActiveRecord::Base
  belongs_to :collection, polymorphic: true

  validates_presence_of :title, :length, :album_id, :artist_id
end
