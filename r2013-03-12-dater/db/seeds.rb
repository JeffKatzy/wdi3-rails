# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# Table name: subscribers
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  tagline     :string(255)
#  bio         :string(255)
#  preferences :string(255)
#  bodytype    :string(255)
#  location    :string(255)
#  status      :string(255)
#  ethnicity   :string(255)
#  gender      :string(255)
#  age         :integer
#  occupation  :string(255)
#  interests   :string(255)
#  political   :string(255)
#  religious   :string(255)
#  education   :string(255)
#  income      :decimal(, )
#

# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  userable_id     :integer
#  userable_type   :string(255)
#
#
# Table name: administrators
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  role       :string(255)
#  ssn        :string(255)
#  tel        :string(255)


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


user = User.create(username: 'ruth', email:'ruth@gmail.com', password: 'a', password_confirmation: 'a')
admin1 = Administrator.create(role: 'db', ssn: '123-33-4444')
admin1.user = user

u1 = User.create(username: 'chyld', email:'chyld@gmail.com', password: 'a', password_confirmation: 'a')
s1 = Subscriber.create(tagline: 'hey', bio: 'my bio', preferences: 'a, b, c', bodytype: 'd', location: 'ny', status: 'single', ethnicity: 'human', gender: 'female', age: 29, occupation: 'rails dev', interests: 'a, b, c', political: 'independent', religious: 'i <3 God', education: 'GA', income: 1_000_000)
s1.user = user

u2 = User.create(username: 'dylan', email:'dylan@gmail.com', password: 'a', password_confirmation: 'a')
s2 = Subscriber.create(tagline: 'hey', bio: 'my bio', preferences: 'a, b, c', bodytype: 'd', location: 'ny', status: 'single', ethnicity: 'human', gender: 'female', age: 29, occupation: 'rails dev', interests: 'a, b, c', political: 'independent', religious: 'i <3 God', education: 'GA', income: 1_000_000)
s2.user = user
s2.subscription = s1

s1 = Subscription.create(plan: 'basic', duration: 30, cost: 20.00, num_email: 5, num_text: 5, is_alist: false)
s2 = Subscription.create(plan: 'free', duration: 30, cost: 0.00, num_email: 0, num_text: 0, is_alist: false)
s3 = Subscription.create(plan: 'deluxe', duration: 60, cost: 40.00, num_email: 20, num_text: 20, is_alist: false)



