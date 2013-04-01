

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

# == Schema Information
#
# Table name: ingredients
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  measurement :string(255)
#  cost        :decimal(, )
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
Book.delete_all
Recipe.delete_all
Ingredient.delete_all


b1 = Book.create(title: 'Mastering the Art of French Cooking', cuisine: 'French', chef: 'Julia Child', image: 'http://ecx.images-amazon.com/images/I/51Asy92Sa8L._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg')
b2 = Book.create(title: 'Microwave cooking for One', cuisine: 'microwavable', chef: 'Marie Smith', image: 'http://ecx.images-amazon.com/images/I/51KJKZ01YZL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg')

r1 = Recipe.create(name: 'Bacon and Beans', course: 'first', cooktime: '20', servingsize: 1, instructions: 'remove bacon and put in frying pan.  You are no longer Jewish.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR--xISsvmL9BCb0xZiX6526ND2SgdoOuI-iGr5UkYhZPCGMIIUyQ')
r2 = Recipe.create(name: 'Shrimp cocktail', course: 'first', cooktime: '30', servingsize: 3, instructions: 'Cook shrimp, and add cocktail.  Serve to goyim.', image: 'http://www.marthastewart.com/sites/files/marthastewart.com/images/content/pub/special_issues/2008Q4/ml1201_sip_fd08_shrimpcockt_l.jpg')

i1 = Ingredient.create(name: 'Bacon', measurement: 'one dollop', cost: 1.50, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR--xISsvmL9BCb0xZiX6526ND2SgdoOuI-iGr5UkYhZPCGMIIUyQ')
i2 = Ingredient.create(name: 'Beans', measurement: 'one can', cost: 1, image: 'http://images.wisegeek.com/bowl-of-red-beans.jpg')
i3 = Ingredient.create(name: 'Shrimp', measurement: 'one can', cost: 10, image: 'http://oceanexplorer.noaa.gov/explorations/03mountains/logs/jul18/media/shrimp8_600.jpg')
i4 = Ingredient.create(name: 'cocktail', measurement: 'one glass', cost: 5, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7KRk0g3YC66UxxD4KxrBCQ-dw5tciSinwd2hSSrbAKpgrRkQG')

b1.recipes = [r1, r2]


r1.ingredients = [i1, i2]
r2.ingredients = [i3, i4]
