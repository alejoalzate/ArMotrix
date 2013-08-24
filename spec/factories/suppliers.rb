# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :supplier do
    document nil
    social_reason "MyString"
    phone_one "MyString"
    phone_two "MyString"
    address "MyString"
    email "MyString"
    state false
  end
end
