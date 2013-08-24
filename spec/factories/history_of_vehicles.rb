# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :history_of_vehicle do
    plate "MyString"
    customer "MyString"
    date "2013-08-22"
  end
end
