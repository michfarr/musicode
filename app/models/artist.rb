class Artist < ActiveRecord::Base
  mount_uploader :photo, ImageUploader

  has_many :albums
  has_many :songs, as: :collection

  validates_presence_of :name, :genre, :description
end
