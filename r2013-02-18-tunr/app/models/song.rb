# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  filename   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#  album_id   :integer
#

class Song < ActiveRecord::Base
  attr_accessible :filename, :image, :name, :genre_ids

  belongs_to :album
  belongs_to :artist

  has_and_belongs_to_many :mixtapes
  has_and_belongs_to_many :genres
end
