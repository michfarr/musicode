class Artist < ActiveRecord::Base
  has_many :songs, dependent: :destroy
  accepts_nested_attributes_for :songs

  validates :name, :genre, :image, :description, presence: true
end
