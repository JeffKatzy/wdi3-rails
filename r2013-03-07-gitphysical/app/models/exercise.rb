# == Schema Information
#
# Table name: exercises
#
#  id         :integer          not null, primary key
#  activity   :string(255)
#  value      :integer
#  unit       :string(255)
#  completed  :date
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Exercise < ActiveRecord::Base
  attr_accessible :activity, :completed, :unit, :value
  belongs_to :user
end
