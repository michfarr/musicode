class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs, as: :collection

  validates_presence_of :name, :release_year, :artist_id
end
