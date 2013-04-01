# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  desc        :text
#  duedate     :date
#  is_complete :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  priority_id :integer
#

class Task < ActiveRecord::Base
  attr_accessible :title, :desc, :duedate, :is_complete
  belongs_to :user
  belongs_to :priority
end
