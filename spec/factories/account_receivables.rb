# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account_receivable do
    name "MyString"
    identification "MyString"
    from "2013-08-22"
    to "2013-08-22"
  end
end
