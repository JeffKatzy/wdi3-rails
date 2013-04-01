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

require 'test_helper'

class PriorityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
