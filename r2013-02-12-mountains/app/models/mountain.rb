# == Schema Information
#
# Table name: mountains
#
#  id       :integer          not null, primary key
#  name     :string(255)
#  location :string(255)
#  image    :text
#  height   :float
#  width    :float
#

class Mountain < ActiveRecord::Base
  attr_accessible :name, :location, :image, :height, :width
end
