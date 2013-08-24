# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shopping do
    supplier "MyString"
    date "2013-08-22"
    state false
    vendor_invoice "MyString"
    concept "MyText"
    value "MyString"
    quantity "MyString"
    iva "MyString"
    discount "MyString"
  end
end
