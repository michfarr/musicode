class Artist < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :songs
  accepts_nested_attributes_for :songs

  validates :name, :genre, :image, :description, presence: true
end
