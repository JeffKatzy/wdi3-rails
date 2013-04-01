# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  isbn       :string(255)
#  image      :text
#  chef       :string(255)
#  cuisine    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ActiveRecord::Base
  attr_accessible :chef, :cuisine, :image, :isbn, :title, :recipe_ids
  has_many :recipes
end
