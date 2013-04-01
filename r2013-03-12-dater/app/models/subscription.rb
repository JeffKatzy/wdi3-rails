# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  plan       :string(255)
#  duration   :integer
#  cost       :decimal(, )
#  num_email  :integer
#  num_text   :integer
#  is_alist   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subscription < ActiveRecord::Base
  attr_accessible :cost, :duration, :is_alist, :num_email, :num_text, :plan
  has_many :subscribers
end
