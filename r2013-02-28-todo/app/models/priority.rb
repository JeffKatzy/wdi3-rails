# == Schema Information
#
# Table name: priorities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  color      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  value      :integer
#

class Priority < ActiveRecord::Base
  attr_accessible :color, :name, :value
  belongs_to :user
end
