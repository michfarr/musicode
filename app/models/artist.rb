class Artist < ActiveRecord::Base
  mout_uploader :photo, ImageUploader

  has_many :albums
  has_many :songs, as: :collection
end
