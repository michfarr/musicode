class Album < ActiveRecord::Base
  mount_uploader :cover, ImageUploader

  belongs_to :artist
  has_many :songs, as: :collection
end
