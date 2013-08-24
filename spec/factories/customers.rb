# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    document nil
    number_document "MyString"
    name "MyString"
    phone "MyString"
    cell_phone "MyString"
    address "MyString"
    email "MyString"
    state false
    credit_quota "MyString"
    restricted_quota "MyString"
    space_available "MyString"
  end
end
