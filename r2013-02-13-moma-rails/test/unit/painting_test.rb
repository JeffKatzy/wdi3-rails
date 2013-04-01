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

require 'test_helper'

class PaintingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
