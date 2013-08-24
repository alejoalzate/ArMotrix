# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bank do
    name "MyString"
    acronym "MyString"
    address "MyString"
    phone "MyString"
    description "MyText"
  end
end
