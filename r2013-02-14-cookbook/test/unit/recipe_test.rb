# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  course       :string(255)
#  cooktime     :string(255)
#  servingsize  :integer
#  instructions :text
#  image        :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  book_id      :integer
#

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
