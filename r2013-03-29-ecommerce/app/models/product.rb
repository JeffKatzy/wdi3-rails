# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  image       :string(255)
#  cost        :float
#  latitude    :float            default(0.0)
#  longitude   :float            default(0.0)
#  address     :text
#

class Product < ActiveRecord::Base
  attr_accessible :name, :description, :image, :cost, :latitude, :logitude, :address
  belongs_to :user
  has_and_belongs_to_many :tags
end
