# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  filename   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#  album_id   :integer
#

require 'spec_helper'

describe Song do
  pending "add some examples to (or delete) #{__FILE__}"
end
