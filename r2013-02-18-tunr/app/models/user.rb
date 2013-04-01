# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  image           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#  balance         :decimal(, )
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :image, :name, :password, :password_confirmation, :balance
  has_many :mixtapes
  has_and_belongs_to_many :albums
  validates :image, :presence => true, :length => { :in => 2..50 }
  validates :balance, numericality: true, numericality: { greater_than_or_equal_to: 0 }
end
