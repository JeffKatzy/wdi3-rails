# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    name "Family"
    url "MyString"
    album FactoryGirl.create(:album)
  end
end
