# == Schema Information
#
# Table name: paintings
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  year       :string(255)
#  medium     :string(255)
#  style      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :text
#  artist_id  :integer
#

class Painting < ActiveRecord::Base
  attr_accessible :medium, :style, :title, :year, :image
  belongs_to :artist
end
