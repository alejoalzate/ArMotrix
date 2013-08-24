# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mechanical do
    document nil
    name "MyString"
    surname "MyString"
    work "MyString"
    type false
    state false
  end
end
