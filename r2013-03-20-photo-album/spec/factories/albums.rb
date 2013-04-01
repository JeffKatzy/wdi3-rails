# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :album do
    name "Barcelona"
  end

  factory :vacation_album do
    name "NYC"
  end
end
