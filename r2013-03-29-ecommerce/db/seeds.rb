# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  is_admin        :boolean
#  balance         :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  image       :string(255)
#  cost        :float
#  latitude    :float            default(0.0)
#  longitude   :float            default(0.0)
#  address     :text
#

# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

u1 = User.create(email: 'jeffreyerickatz+1@gmail.com', password: 'a', password_confirmation: 'a', is_admin: true, balance: 100.00)

p1 = Product.create(name: 'toaster', description: 'It warms bread!', image: 'www.google.com', cost: 29.99, address: "41 Kingsclere 18966")

p2 = Product.create(name: 'coffee maker', description: 'It makes coffee!', image: 'www.google.com', cost: 19.99, address: "139 W. 83rd Street New York NY")

t1 = Tag.create(name: 'appliances')

u1.products = [p1, p2]
p1.tags << t1
p2.tags << t1

