# == Schema Information
#
# Table name: mixtapes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'spec_helper'

describe Mixtape do
  pending "add some examples to (or delete) #{__FILE__}"
end
