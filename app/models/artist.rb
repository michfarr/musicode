class Artist < ActiveRecord::Base
  has_many :albums
  has_many :songs, as: :collection
end
